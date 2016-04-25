//
//  OrganizationSpec.swift
//  GithubSwift
//
//  Created by Khoa Pham on 11/04/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

import Foundation
import GithubSwift
import Quick
import Nimble
import Mockingjay
import RxSwift
import Sugar

class OrganizationSpec: QuickSpec {
  override func spec() {
    describe("organization") {
      
      let json = [
        "login": "github",
        "id": 1,
        "url": "https://api.github.com/orgs/github",
        "avatar_url": "https://github.com/images/error/octocat_happy.gif",
        "company": "GitHub",
        "blog": "https://github.com/blog",
        "location": "San Francisco",
        "email": "octocat@github.com",
        "public_repos": 2,
        "public_gists": 1,
        "followers": 20,
        "following": 0,
        "html_url": "https://github.com/octocat",
        "created_at": "2008-01-14T04:33:35Z",
        "type": "Organization",
        "owned_private_repos": 100,
        "private_gists": 81,
        "disk_usage": 10000,
        "collaborators": 8,
        "billing_email": "support@github.com",
        "plan": [
           "name": "Medium",
           "space": 400,
           "private_repos": 20
        ]
      ]
      
      let organization = Organization(json)
      
      it("should initialize") {
        expect(organization.login).to(equal("github"))
        expect(organization.name).to(equal("github"))
        expect(organization.objectID).to(equal("1"))
        expect(organization.avatarURL).to(equal(NSURL(string: "https://github.com/images/error/octocat_happy.gif")))
        expect(organization.company).to(equal("GitHub"))
        expect(organization.blog).to(equal("https://github.com/blog"))
        expect(organization.email).to(equal("octocat@github.com"))
        expect((organization.publicRepoCount)).to(equal(2))
        expect((organization.privateRepoCount)).to(equal(100))
        expect((organization.diskUsage)).to(equal(10000))
        expect((organization.collaborators)).to(equal(8))
        
        expect(organization.plan).notTo(beNil());
        expect(organization.plan!.name).to(equal("Medium"))
        expect(organization.plan!.space).to(equal(400))
        expect(organization.plan!.privateRepos).to(equal(20))
      }
    }
  }
}
