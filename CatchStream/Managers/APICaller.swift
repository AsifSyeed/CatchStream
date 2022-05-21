//
//  APICaller.swift
//  CatchStream
//
//  Created by BS109 on 19/5/22.
//

import Foundation

struct Constants {
    static let API_KEY = "b2fb41b249777002a6b98c4f28c23602"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error {
    case faliedTogetData
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/movie/day?api_key=\(Constants.API_KEY)") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
                
            } catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
    
    func getTrendingTVs(completion: @escaping (Result<[String], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/tv/day?api_key=\(Constants.API_KEY)") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                
                let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                
                print(results)
            } catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
}
