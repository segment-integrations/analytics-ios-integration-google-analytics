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

describe(@"SEGGoogleAnalyticsIntegration", ^{
    __block Class mockGoogleAnalytics;
    __block SEGGoogleAnalyticsIntegration *integration;
    
    beforeEach(^{
        mockGoogleAnalytics = mockClass([GAI class]);
        integration = [[SEGGoogleAnalyticsIntegration alloc] initWithSettings:@{}];
    });
    
    it(@"identify with no Traits", ^{
        SEGIdentifyPayload *payload = [[SEGIdentifyPayload alloc] initWithUserId:@"1111" anonymousId:nil traits:@{} context:@{} integrations:@{}];
        
        [integration identify:payload];
        
        [verify(mockGoogleAnalytics) setUserAttributes: @{@"user_id": @"1111"}];
    });
    
    it(@"identify with Traits", ^{
        SEGIdentifyPayload *payload = [[SEGIdentifyPayload alloc] initWithUserId:@"1111"
                                                                     anonymousId:nil
                                                                          traits:@{@"name":@"Kylo Ren",
                                                                                   @"gender": @"male",
                                                                                   @"emotion": @"angsty"}
                                                                         context:@{} integrations:@{}];
        
        [integration identify:payload];
        
//        [verify(mockTaplytics) setUserAttributes: @{@"user_id": @"1111",
//                                                    @"name": @"Kylo Ren",
//                                                    @"gender": @"male",
//                                                    @"customData":
//                                                        @{@"emotion":@"angsty"}
//                                                    }];
    });
    
    it(@"track with no props", ^{
        SEGTrackPayload *payload = [[SEGTrackPayload alloc] initWithEvent:@"Starship Clicked" properties:@{} context:@{} integrations:@{}];
        
        [integration track:payload];
        
//        [verify(mockTaplytics) logEvent:@"Starship Clicked" value:nil metaData:@{}];
    });
    
    it(@"track with props", ^{
        SEGTrackPayload *payload = [[SEGTrackPayload alloc] initWithEvent:@"Starship Ordered" properties:@{@"Starship Type": @"Death Star"} context:@{} integrations:@{}];
        
        [integration track:payload];
        
//        [verify(mockTaplytics) logEvent:@"Starship Ordered" value:nil metaData:@{@"Starship Type": @"Death Star"}];
    });
    
    it(@"track with revenue", ^{
        SEGTrackPayload *payload = [[SEGTrackPayload alloc] initWithEvent:@"Starship Bought" properties:@{@"revenue": @20000} context:@{} integrations:@{}];
        
        [integration track:payload];
        
//        [verify(mockTaplytics) logRevenue:@"Starship Bought" revenue:@20000 metaData:@{}];
    });
    
    it(@"track with value", ^{
        SEGTrackPayload *payload = [[SEGTrackPayload alloc] initWithEvent:@"Starship Refueled" properties:@{@"value": @200.15, @"Fuel Type":@"Solar Cells"} context:@{} integrations:@{}];
        
        [integration track:payload];
        
//        [verify(mockTaplytics) logEvent:@"Starship Refueled" value:@200.15 metaData:@{@"Fuel Type": @"Solar Cells"}];
    });
    
    it(@"reset", ^{
        [integration reset];
        
//        [verify(mockTaplytics) resetUser:nil];
    });
});

SpecEnd
