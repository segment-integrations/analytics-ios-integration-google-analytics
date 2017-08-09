Change Log
==========

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
