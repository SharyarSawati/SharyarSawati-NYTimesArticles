//
//  NYTimesArticlesTests.swift
//  NYTimesArticlesTests
//
//  Ceated by qurtass group on 17/07/2021.
//  Copyright © 2021 Sharyar Sawati. All rights reserved.
//

import XCTest
@testable import NYTimesArticles

class NYTimesArticlesTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func constructTestArticle() -> Article {
        let thumbnailMetaData = ArticleMediaMetaData(
            url: "https://thumbnail.image.jpg",
            format: "Standard Thumbnail"
        )
        let mediumImageMetaData = ArticleMediaMetaData(
            url: "https://medium.image.jpg",
            format: "mediumThreeByTwo440"
        )
        let articleMedia = ArticleMedia(mediaMetaData: [thumbnailMetaData,mediumImageMetaData])
        
        let article = Article(
            title: "Article Title",
            byline: "by the author",
            abstract: "Article Abstract",
            publishedDate: "2019-03-20",
            media: [articleMedia]
        )
        return article
    }
    
    func testArticleViewModel() {
        
        let testArticle = constructTestArticle()
        let articleViewModel = ArticleViewModel(article: testArticle)
        
        XCTAssertEqual(testArticle.title, articleViewModel.title)
        XCTAssertEqual(testArticle.byline, articleViewModel.byline)
        XCTAssertEqual(testArticle.publishedDate, articleViewModel.publishedDate)
        XCTAssertEqual(testArticle.abstract, articleViewModel.abstract)
        
        let mediaMetaData = testArticle.media.first?.mediaMetadata
        let thumbnailUrlString = mediaMetaData?.filter{
            $0.format == "Standard Thumbnail"
            }.first?.url
        XCTAssertEqual(thumbnailUrlString, articleViewModel.thumbnailUrlString)
        let imageUrlString = mediaMetaData?.filter{
            $0.format == "mediumThreeByTwo440"
            }.first?.url
        XCTAssertEqual(imageUrlString, articleViewModel.imageUrlString)
    }
    

}
