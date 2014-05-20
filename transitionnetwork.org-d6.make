; Drush Make file for Transition Network Drupal 6 website
core = 6.x
api = 2



; Drupal core - Latest Pressflow from Omega8cc based on tagged release
; -- update version based on latest release
; -- se:; https://github.com/omega8cc/nginx-for-drupal/search?q=pressflow
projects[pressflow][type] = "core"
projects[pressflow][download][type] = "get"
projects[pressflow][download][url] = "http://files.aegir.cc/core/pressflow-6.29.1.tar.gz"


; Modules - Contrib with versions or patched
; -- set for specific version and/or patched.
; -- revisit these occasionally and try to upgrade or use standard versions
; -- please always describe why these are needed, and link to any bugs on drupal.org

; admin_menu -- using newer dev version that fixes some bugs
projects[admin_menu][subdir] = "contrib"
projects[admin_menu][version] = "3.x-dev"

; content_profile -- dev fixes fatal class not found: drupal.org/node/375682
projects[content_profile][subdir] = "contrib"
projects[content_profile][version] = "1.x-dev"

; context -- staying 2.1 until we can manage 3.x update, so much has changed
projects[context][subdir] = "contrib"
projects[context][version] = "2.x-dev"
projects[context][patch][tn01] = "https://raw.github.com/transitionnetwork/transitionnetwork.org-d6.profile/master/patches/context-blockcache-alter-enable.patch"

; ctools -- dev fixes ctools preg_match() error: http://drupal.org/node/1444006#comment-6362100
projects[ctools][subdir] = "contrib"
projects[ctools][version] = "1.10"
projects[ctools][patch][1444006] = "http://drupal.org/files/ctools-1444006-disallowed-unicode-code-point-18.patch"

; custom_breadcrumbs -- using newer dev version that fixes some bugs
projects[custom_breadcrumbs][subdir] = "contrib"
projects[custom_breadcrumbs][version] = "2.x-dev"

; messaging -- using dev version that is much better, fixes bugs
projects[messaging][subdir] = "contrib"
projects[messaging][version] = "4.x-dev"

; publishcontent -- using newer dev version that fixes some bugs
;projects[publishcontent][subdir] = "contrib"
;projects[publishcontent][version] = "1.x-dev"

; link -- using newer dev version that has better views integration
projects[link][subdir] = "contrib"
projects[link][version] = "2.x-dev"

; location -- latest dev
projects[location][subdir] = "contrib"
projects[location][version] = "3.x-dev"
; Patch for French departments now in codebase but being worked on - https://drupal.org/node/635958
;projects[location][patch][635958] = "http://drupal.org/files/france_provinces_complete-635958-24.patch"
projects[location][patch][tn02] = ​http://drupal.org/files/issues/location.module_34.patch


; logintoboggan -- use dev plus our patch for better MySQL performance
; see:- https://tech.transitionnetwork.org/trac/ticket/590#comment:1
;     - https://tech.transitionnetwork.org/trac/ticket/582#comment:7
projects[logintoboggan][subdir] = "contrib"
projects[logintoboggan][version] = "1.x-dev"
projects[logintoboggan][patch][tn02] = "https://raw.github.com/transitionnetwork/transitionnetwork.org-d6.profile/master/patches/logintoboggan_performance_mysql.patch"

; media_youtube -- using newer dev version that fixes a bunch of stuff
projects[media_youtube][subdir] = "contrib"
projects[media_youtube][version] = "1.x-dev"

; nodehierarchy -- 2.x runs out of memory, don't upgrade without establishing cause
projects[nodehierarchy][subdir] = "contrib"
projects[nodehierarchy][version] = "1.5"

; notifications -- using newer dev version that fixes some SERIOUS bugs
projects[notifications][subdir] = "contrib"
projects[notifications][version] = "4.x-dev"

; path_redirect -- using newer dev version that fixes some bugs
projects[path_redirect][subdir] = "contrib"
projects[path_redirect][version] = "1.x-dev"

; pathologic -- using newer dev version that fixes some bugs
projects[pathologic][subdir] = "contrib"
projects[pathologic][version] = "3.x-dev"

; recaptcha -- using newer dev version that fixes some bugs around SSL
projects[recaptcha][subdir] = "contrib"
projects[recaptcha][version] = "1.x-dev"

; robotstxt -- allows settings.php to set robots.txt
projects[robotstxt][subdir] = "contrib"
projects[robotstxt][version] = "1.x-dev"

; session443 -- using newer dev version that fixes some bugs around SSL
projects[session443][subdir] = "contrib"
projects[session443][version] = "1.x-dev"

; tagadelic_views -- using newer dev version that fixes some bugs
projects[tagadelic_views][subdir] = "contrib"
projects[tagadelic_views][version] = "1.x-dev"

; views -- 2.x updates ok, but managing change to 3.x needs care
projects[views][subdir] = "contrib"
projects[views][version] = "2.16"

; views_content_cache -- Use dev version as it's got some big improvements
projects[views_content_cache][subdir] = "contrib"
projects[views_content_cache][version] = "2.x-dev"

; views_datasource -- using newer dev version that fixes the data output
projects[views_datasource][subdir] = "contrib"
projects[views_datasource][version] = "1.x-dev"

; views_litepager -- need 2.x branch to match views version.
projects[views_litepager][subdir] = "contrib"
projects[views_litepager][version] = "2.x-dev"

; views_php -- Use DEV version
projects[views_php][subdir] = "contrib"
projects[views_php][version] = "1.x-dev"

; views_slideshow -- 2.x needs views 2, 3.x needs 3.x so keep to views version
projects[views_slideshow][subdir] = "contrib"
projects[views_slideshow][version] = "2.4"

; votingapi -- using newer dev version that has better views integration
projects[votingapi][subdir] = "contrib"
projects[votingapi][version] = "2.x-dev"



; Modules - Contrib
projects[advagg][subdir] = "contrib"
projects[abuse][subdir] = "contrib"
projects[blockcache_alter][subdir] = "contrib"
projects[advanced_forum][subdir] = "contrib"
projects[author_pane][subdir] = "contrib"
projects[auto_nodetitle][subdir] = "contrib"
projects[autoload][subdir] = "contrib"
projects[backup_migrate][subdir] = "contrib"
projects[botcha][subdir] = "contrib"
projects[better_formats][subdir] = "contrib"
projects[block_class][subdir] = "contrib"
projects[calendar][subdir] = "contrib"
projects[captcha][subdir] = "contrib"
projects[cck][subdir] = "contrib"
projects[cck_private_fields][subdir] = "contrib"
projects[coder][subdir] = "contrib"
projects[coder_tough_love][subdir] = "contrib"
projects[colorbox][subdir] = "contrib"
projects[comment_notify][subdir] = "contrib"
projects[contact][subdir] = "contrib"
projects[content_access][subdir] = "contrib"
projects[content_taxonomy][subdir] = "contrib"
projects[cnr][subdir] = "contrib"
projects[data][subdir] = "contrib"
projects[date][subdir] = "contrib"
projects[dbtng][subdir] = "contrib"
projects[devel][subdir] = "contrib"
projects[elysia_cron][subdir] = "contrib"
projects[email][subdir] = "contrib"
projects[emfield][subdir] = "contrib"
projects[environment_indicator][subdir] = "contrib"
projects[features][subdir] = "contrib"
projects[feeds][subdir] = "contrib"
projects[filefield][subdir] = "contrib"
projects[fivestar][subdir] = "contrib"
projects[google_analytics][subdir] = "contrib"
projects[hierarchical_select][subdir] = "contrib"
projects[image_caption][subdir] = "contrib"
projects[image_resize_filter][subdir] = "contrib"
projects[imageapi][subdir] = "contrib"
projects[imagecache][subdir] = "contrib"
projects[imagefield][subdir] = "contrib"
projects[imce][subdir] = "contrib"
projects[imce_wysiwyg][subdir] = "contrib"
projects[insert][subdir] = "contrib"
projects[itweak_upload][subdir] = "contrib"
projects[job_scheduler][subdir] = "contrib"
projects[jquery_ui][subdir] = "contrib"
projects[jquery_update][subdir] = "contrib"
projects[libraries][subdir] = "contrib"
projects[location_feeds][subdir] = "contrib"
projects[mail_logger][subdir] = "contrib"
projects[mailchimp][subdir] = "contrib"
projects[maxlength][subdir] = "contrib"
projects[media_vimeo][subdir] = "contrib"
projects[menu_block][subdir] = "contrib"
projects[mimemail][subdir] = "contrib"
projects[mollom][subdir] = "contrib"
projects[moopapi][subdir] = "contrib"
projects[multicolumncheckboxesradios][subdir] = "contrib"
projects[node_limitnumber][subdir] = "contrib"
projects[nodeaccess_userreference][subdir] = "contrib"
projects[nodeauthor][subdir] = "contrib"
projects[nodequeue][subdir] = "contrib"
projects[og][subdir] = "contrib"
projects[panels][subdir] = "contrib"
projects[pathauto][subdir] = "contrib"
projects[piwik][subdir] = "contrib"
projects[publishcontent][subdir] = "contrib"
projects[reroute_email][subdir] = "contrib"
projects[revision_deletion][subdir] = "contrib"
projects[rules][subdir] = "contrib"
projects[schema][subdir] = "contrib"
projects[service_links][subdir] = "contrib"
projects[site_map][subdir] = "contrib"
projects[spambot][subdir] = "contrib"
projects[stringoverrides][subdir] = "contrib"
projects[strongarm][subdir] = "contrib"
projects[tagadelic][subdir] = "contrib"
projects[term_node_count][subdir] = "contrib"
projects[terms_of_use][subdir] = "contrib"
projects[token][subdir] = "contrib"
projects[unique_field][subdir] = "contrib"
projects[update_advanced][subdir] = "contrib"
projects[views_bonus][subdir] = "contrib"
projects[views_bulk_operations][subdir] = "contrib"
projects[views_customfield][subdir] = "contrib"
projects[views_rss][subdir] = "contrib"
projects[web_widgets][subdir] = "contrib"
projects[webform][subdir] = "contrib"
projects[wysiwyg][subdir] = "contrib"
projects[xmlsitemap][subdir] = "contrib"






; Modules - Custom
; gmap -- TN version has some overrides/improvements from original
projects[gmap][type] = "module"
projects[gmap][download][type] = "git"
projects[gmap][download][url] = "git://github.com/transitionnetwork/gmap.git"
projects[gmap][download][branch] = "master"
projects[gmap][subdir] = "custom"

projects[ijk_plugins][type] = "module"
projects[ijk_plugins][download][type] = "git"
projects[ijk_plugins][download][url] = "git://github.com/i-jk/ijk_plugins.git"
projects[ijk_plugins][download][branch] = "master"
projects[ijk_plugins][subdir] = "custom"

projects[tn_user_notifications_feeds][type] = "module"
projects[tn_user_notifications_feeds][download][type] = "git"
projects[tn_user_notifications_feeds][download][url] = "git://github.com/transitionnetwork/tn_user_notifications_feeds.git"
projects[tn_user_notifications_feeds][download][branch] = "master"
projects[tn_user_notifications_feeds][subdir] = "custom"

projects[transition_extras][type] = "module"
projects[transition_extras][download][type] = "git"
projects[transition_extras][download][url] = "git://github.com/transitionnetwork/transition_extras.git"
projects[transition_extras][download][branch] = "master"
projects[transition_extras][subdir] = "custom"

projects[transition_project_massage][type] = "module"
projects[transition_project_massage][download][type] = "git"
projects[transition_project_massage][download][url] = "git://github.com/transitionnetwork/transition_project_massage.git"
projects[transition_project_massage][download][branch] = "master"
projects[transition_project_massage][subdir] = "custom"

projects[transition_sharing_engine][type] = "module"
projects[transition_sharing_engine][download][type] = "git"
projects[transition_sharing_engine][download][url] = "git://github.com/transitionnetwork/transition_sharing_engine.git"
projects[transition_sharing_engine][download][branch] = "master"
projects[transition_sharing_engine][subdir] = "custom"

projects[transition_sharing_engine_client][type] = "module"
projects[transition_sharing_engine_client][download][type] = "git"
projects[transition_sharing_engine_client][download][url] = "git://github.com/transitionnetwork/transition_sharing_engine_client.git"
projects[transition_sharing_engine_client][download][branch] = "master"
projects[transition_sharing_engine_client][subdir] = "custom"



; Features
projects[transition_alert_web_contacts][type] = "module"
projects[transition_alert_web_contacts][download][type] = "git"
projects[transition_alert_web_contacts][download][url] = "git://github.com/transitionnetwork/transition_alert_web_contacts.git"
projects[transition_alert_web_contacts][download][branch] = "master"
projects[transition_alert_web_contacts][subdir] = "features"

projects[initiatives_directory][type] = "module"
projects[initiatives_directory][download][type] = "git"
projects[initiatives_directory][download][url] = "git://github.com/transitionnetwork/initiatives_directory.git"
projects[initiatives_directory][download][branch] = "master"
projects[initiatives_directory][subdir] = "features"

projects[transition_events][type] = "module"
projects[transition_events][download][type] = "git"
projects[transition_events][download][url] = "git://github.com/transitionnetwork/transition_events.git"
projects[transition_events][download][branch] = "master"
projects[transition_events][subdir] = "features"

projects[transition_import_blogs][type] = "module"
projects[transition_import_blogs][download][type] = "git"
projects[transition_import_blogs][download][url] = "git://github.com/transitionnetwork/transition_import_blogs.git"
projects[transition_import_blogs][download][branch] = "master"
projects[transition_import_blogs][subdir] = "features"

projects[transition_network_projects][type] = "module"
projects[transition_network_projects][download][type] = "git"
projects[transition_network_projects][download][url] = "git://github.com/transitionnetwork/transition_network_projects.git"
projects[transition_network_projects][download][branch] = "master"
projects[transition_network_projects][subdir] = "features"

projects[transition_news][type] = "module"
projects[transition_news][download][type] = "git"
projects[transition_news][download][url] = "git://github.com/transitionnetwork/transition_news.git"
projects[transition_news][download][branch] = "master"
projects[transition_news][subdir] = "features"

projects[transition_people][type] = "module"
projects[transition_people][download][type] = "git"
projects[transition_people][download][url] = "git://github.com/transitionnetwork/transition_people.git"
projects[transition_people][download][branch] = "master"
projects[transition_people][subdir] = "features"

projects[transition_raise_alerts_for_profiles][type] = "module"
projects[transition_raise_alerts_for_profiles][download][type] = "git"
projects[transition_raise_alerts_for_profiles][download][url] = "git://github.com/transitionnetwork/transition_raise_alerts_for_profiles.git"
projects[transition_raise_alerts_for_profiles][download][branch] = "master"
projects[transition_raise_alerts_for_profiles][subdir] = "features"

projects[transition_themes][type] = "module"
projects[transition_themes][download][type] = "git"
projects[transition_themes][download][url] = "git://github.com/transitionnetwork/transition_themes.git"
projects[transition_themes][download][branch] = "master"
projects[transition_themes][subdir] = "features"



; Themes - Contrib
projects[rootcandy][type] = "theme"



; Themes - Custom
; Original (2009-2011) www.transitionnetwork.org main theme -- still in use in parts!
projects[transition][type] = "theme"
projects[transition][download][type] = "git"
projects[transition][download][url] = "git://github.com/transitionnetwork/transition.git"
projects[transition][download][branch] = "master"

; Current (2011-) www.transitionnetwork.org main theme.
projects[transition2][type] = "theme"
projects[transition2][download][type] = "git"
projects[transition2][download][url] = "git://github.com/transitionnetwork/transition2.git"
projects[transition2][download][branch] = "master"

; Commmunity Microsites theme - subtheme of 'transition' theme.
projects[transitioncms][type] = "theme"
projects[transitioncms][download][type] = "git"
projects[transitioncms][download][url] = "git://github.com/transitionnetwork/transitioncms.git"
projects[transitioncms][download][branch] = "master"



; Libraries
; TinyMCE WYSIWYG editor
libraries[tinymce][download][type] = "get"
libraries[tinymce][download][url] = "http://github.com/downloads/tinymce/tinymce/tinymce_3.4.9.zip"
libraries[tinymce][directory_name] = "tinymce"

; jQuery Cycle image rotation for www.transitionnetwork.org homepage slideshow
libraries[jquery.cycle][download][type] = "get"
libraries[jquery.cycle][download][url] = "http://malsup.github.com/jquery.cycle.all.js"
libraries[jquery.cycle][directory_name] = "jquery.cycle"

; jQuery UI for some modules to use
libraries[jquery.ui][download][type] = "get"
libraries[jquery.ui][download][url] = "http://jquery-ui.googlecode.com/files/jquery.ui-1.6.zip"
libraries[jquery.ui][directory_name] = "jquery.ui"

libraries[colorbox][download][type] = "get"
libraries[colorbox][download][url] = "http://drupal.org/files/colorbox-1.3.18.zip"
libraries[colorbox][directory_name] = "colorbox"
