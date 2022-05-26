//
//  YoutubeSearchResponse.swift
//  CatchStream
//
//  Created by BS901 on 5/26/22.
//

import Foundation


struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}


struct VideoElement: Codable {
    let id: IdVideoElement
}


struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}


/*
 items =     (
             {
         etag = m9xvBrlH7uULMlHw0Lz2LSof0vg;
         id =             {
             kind = "youtube#video";
             videoId = xOPKXI9gslU;
         };
         kind = "youtube#searchResult";
     },
 */
