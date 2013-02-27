<?php
namespace Blend\TutorialBlogBundle\Controller;
//The above defines our PHP namespace

//This declares the components we'll be using 
use Symfony\Component\HttpFoundation\Response,
    eZ\Publish\Core\MVC\Symfony\Controller\Content\ViewController as APIViewController,
    eZ\Publish\API\Repository\Values\Content,
    eZ\Publish\API\Repository\Values\Content\Query,
    eZ\Publish\API\Repository\Values\Content\Query\Criterion,
    eZ\Publish\API\Repository\Values\Content\Search\SearchResult,
    eZ\Publish\API\Repository\Values\Content\Query\SortClause; 
/**
 * BlogController provides basic sub-request methods used by the tutorial blog
 * Extends APIViewController which provides some convenience methods for handling request/response objects
 */
class BlogController extends APIViewController
{
    /**
     * postsByDate returns a formatted list of all posts beneath a location id(aka node id)
     * Posts are retrieved from the repository and returned in reverse chronological order
     * @param $subTreeLocationId The location ID (node ID) to look under
     * @param string $viewType What type of view template should render each result
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function postsByDate($subTreeLocationId, $viewType='summary')
    {
        //Retrieve the location service from the Symfony container
        $locationService = $this->getRepository()->getLocationService();
 
        //Load the called location (node) from the repository based on the ID
        $root = $locationService->loadLocation( $subTreeLocationId );
 
        //Get the modification time from the content object
        $modificationDate = $root->contentInfo->modificationDate;
 
        //Retrieve a subtree fetch of the latest posts
        $postResults = $this->fetchSubTree(
            $root,
            array('blog_post'),
            array(new SortClause\Field('blog_post','publication_date',Query::SORT_DESC))
        );

        //Convert the results from a search result object into a simple array
        $posts = array();
        foreach ( $postResults->searchHits as $hit )
        {
            $posts[] = $hit->valueObject;
 
            //If any of the posts is newer than the root, use that post's modification date
            if ($hit->valueObject->contentInfo->modificationDate > $modificationDate) {
                $modificationDate = $hit->valueObject->contentInfo->modificationDate;
            }
        }
 
        //Set the etag and modification date on the response
        $response = $this->buildResponse(
            __METHOD__ . $subTreeLocationId,
            $modificationDate
        );
 
        //If nothing has been modified, return a 304
        if ( $response->isNotModified( $this->getRequest() ) )
        {
            return $response;
        }
 
        //Render the output
        return $this->render(
            'BlendTutorialBlogBundle::posts_list.html.twig',
            array( 'posts' => $posts, 'viewType' => $viewType ),
            $response
        );
    }

    /**
     * A convenience method to provide a simple method for retrieving selected objects.
     * Returns all content object from a subtree of content by type, based on the location
     * @param Location $subTreeLocation The location object representing a location (node) in the repository
     * @param array $typeIdentifiers an array of string containing identifiers for ContentTypes
     * @param array $sortMethods An array of sort methods
     * @return \eZ\Publish\API\Repository\Values\Content\Search\SearchResult
     * @todo Factor this method out as a service to be used by other controllers
     */
    protected function fetchSubTree(
        \eZ\Publish\API\Repository\Values\Content\Location $subTreeLocation,
        array $typeIdentifiers=array(),
        array $sortMethods=array()
    )
    {
 
        //Access the search service provided by the eZ Repository (Public API)
        $searchService = $this->getRepository()->getSearchService();
 
        $criterion = array(
            new Criterion\ContentTypeIdentifier( $typeIdentifiers ),
			new Criterion\Subtree( $subTreeLocation->pathString )
        );
 
        //Construct a query
        $query = new Query();
        $query->criterion = new Criterion\LogicalAnd(
            $criterion
        );

        if ( !empty( $sortMethods ) )
        {
            $query->sortClauses = $sortMethods;
        }
        $query->limit = 20;
 
        //Return the content from the repository
        return $searchService->findContent( $query );
    } 
}