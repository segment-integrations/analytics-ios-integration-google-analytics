Change Log
==========
Version 1.3.0 *(9th January, 2020)*
--------------------------------

* [New](https://github.com/segment-integrations/analytics-ios-integration-google-analytics/commit/419491d9ff59b1f85e42eccad3f19d263b653b2c): Add support to send `setCampaignParametersFromUrl` to Google Analytics when a "Deep Link Opened" track event is fired. This will enable enhanced campaign data mappings like `utm_id` and `glcid` to be mapped and sent to Google Analytics.

Version 1.2.0 *(4th July, 2018)*
--------------------------------
*(Supports analytics-ios 3.+ and Google Analytics 3.14.+)*

* [Enhancement](https://github.com/segment-integrations/analytics-ios-integration-google-analytics/commit/6ed71e2ff457ad7f10fadf6fc3e95b5f0c6426f2): Fix issues related to `use_frameworks!` and transitive static libraries.

##### Transitioning from static library workarounds

If you are using `use_frameworks!` and workarounds you may need to follow extra-steps :
1. Make sure you are using CocoaPods 1.4+
   ```bash
   $ pod --version
   1.5.3
   ```
2. The `StaticLibWorkaround` subspec has been removed, use the default subspec instead
3. Remove references to the pod source files from your Xcode target if any
4. Remove any remaining workarounds (e.g. `post_install` hooks)
5. *(optional)*  if you don't directly depend on Google Analytics you don't need to explicit depend on it anymore

###### Example

- Before
    ```ruby
    use_frameworks!

    pod 'Analytics'

    pod 'Segment-GoogleAnalytics/StaticLibWorkaround'
    pod 'GoogleAnalytics'
    pod 'GoogleIDFASupport'

    post_install do |installer|
        installer.pods_project.targets.each do |target|
            target.build_configurations.each do |config|
                if config.build_settings['PRODUCT_NAME'] == 'Segment_GoogleAnalytics'
                    # ...
                end
            end
        end
    end
    ```

- After
    ```ruby
    use_frameworks!

    pod 'Analytics'
    pod 'Segment-GoogleAnalytics'
    ```

Version 1.1.7 *(9th August, 2017)*
----------------------------------
*(Supports analytics-ios 3.+ and Google Analytics 3.14.+)*

* [Experimental](https://github.com/segment-integrations/analytics-ios-integration-google-analytics/commit/78ea52afa16f152331368c96ca3e0e2e10042442): Try a newer workaround for static library issue.


Version 1.1.6 *(27th June, 2017)*
-------------------------------------------
*(Supports analytics-ios 3.+ and Google Analytics 3.14.+)*

* [New Feature](https://github.com/segment-integrations/analytics-ios-integration-google-analytics/commit/0a23f5bee612399a2310f8d895cd1a050c0d1414): Maps campaign data to GA from `track` and `screen` calls when present in `context.campaign`.

Version 1.1.5 *(4th November, 2016)*
-------------------------------------------
*(Supports analytics-ios 3.+ and Google Analytics 3.14.+)*

* [Enhancement](https://github.com/segment-integrations/analytics-ios-integration-google-analytics/pull/14/files): Add subspec for static library workaround. Instead of adding `pod 'Segment-GoogleAnalytics'`, add the following to your Podfile if you are affected:

```
pod 'GoogleAnalytics'
pod 'Segment-GoogleAnalytics/StaticLibWorkaround'
```

Version 1.1.4 *(14th September, 2016)*
-------------------------------------------
*(Supports analytics-ios 3.+)*

* Fix: Prevent error 'include of non-modular header inside framework module'.

Version 1.1.3 *(27th July, 2016)*
-------------------------------------------
*(Supports analytics-ios 3.0.+)*

* Fix bug for proper inclusion of Spec'd `Order Completed` properties

Version 1.1.2 *(7th June, 2016)*
-------------------------------------------
*(Supports analytics-ios 3.0.+)*

 * Add Core subspec for optional exclusion of Google IDFA Support.

Version 1.1.0 *(11th May, 2016)*
-------------------------------------------
*(Supports analytics-ios 3.0.+ and Google Analytics 3.14.+)*

 * Add Core subspec for optional exclusion of Google IDFA Support

Version 1.0.1 *(26th November, 2015)*
-------------------------------------------
*(Supports analytics-ios 3.0.+ and Google Analytics 3.14.+)*

 * Fix bug where using custom dimensions and metrics would crash.

Version 1.0.0 *(24th November, 2015)*
-------------------------------------------
*(Supports analytics-ios 3.0.+ and Google Analytics 3.14.+)*

Initial stable release.


Version 1.0.0-alpha *(18th November, 2015)*
-------------------------------------------
*(Supports analytics-ios 3.0.+ and Google Analytics 3.14.+)*

Initial release.
