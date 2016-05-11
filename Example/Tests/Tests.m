//
//  Segment-GoogleAnalyticsTests.m
//  Segment-GoogleAnalyticsTests
//
//  Created by Prateek Srivastava on 11/15/2015.
//  Copyright (c) 2015 Prateek Srivastava. All rights reserved.
//

// https://github.com/Specta/Specta

SpecBegin(InitialSpecs);

describe(@"SEGGoogleAnalyticsIntegrationFactory", ^{
    it(@"factory creates integration with empty settings", ^{
        SEGGoogleAnalyticsIntegration *integration = [[SEGGoogleAnalyticsIntegrationFactory instance] createWithSettings:@{
                                                                                                               } forAnalytics:nil];
        
        expect(integration.settings).to.equal(@{});
    });
});

describe(@"SEGGoogleAnalyticsIntegrationFactory", ^{
    it(@"factory creates integration with basic settings", ^{
        SEGGoogleAnalyticsIntegration *integration = [[SEGGoogleAnalyticsIntegrationFactory instance] createWithSettings:@{
                                                                                                               @"mobileTrackingId" : @"foo"
                                                                                                               } forAnalytics:nil];
        
        expect(integration.settings).to.equal(@{ @"mobileTrackingId" : @"foo" });
    });
});

SpecEnd
