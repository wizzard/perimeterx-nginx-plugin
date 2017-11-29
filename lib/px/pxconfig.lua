----------------------------------------------
-- PerimeterX(www.perimeterx.com) Nginx plugin
-- Version 1.5.0
-- Release date: 05.04.2016
----------------------------------------------

local _M = {}

_M.px_enabled = true

-- ##  Configuration Block ##

-- ## Required Parameters ##
_M.px_appId = 'PXvRfnOj4y'
_M.cookie_secret = '1oESDgAkA9xAmsn8skDPobOPKSPwnGzAKcQIniM4aGKxZsBnY41q1m37nIgZEP9h'
_M.auth_token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzY29wZXMiOlsicmlza19zY29yZSIsInJlc3RfYXBpIl0sImlhdCI6MTQ5NjY2MzQ2Niwic3ViIjoiUFh2UmZuT2o0eSIsImp0aSI6IjgwYjY1MmQ2LTZkN2MtNGNkNy1hNTdhLTU4MWUxMGZjN2JlNiJ9.M3QMB7GFndSE6U8slsMmYEU6H2h_elzQtx7_3EoMSIU'


-- ## Blocking Parameters ##
_M.blocking_score = 100
_M.block_enabled = true
_M.captcha_enabled = true

-- ## Additional Configuration Parameters ##
_M.sensitive_headers = {'cookie', 'cookies'}
_M.ip_headers = {}
_M.score_header_name = 'X-PX-SCORE'
_M.sensitive_routes_prefix = {}
_M.sensitive_routes_suffix = {}
_M.captcha_provider = "reCaptcha"
_M.additional_activity_handler = nil
_M.enabled_routes = {}

-- ## Blocking Page Parameters ##
_M.custom_logo = nil
_M.css_ref = nil
_M.js_ref = 'https://f7f17379.ngrok.io/dom.js'

-- ## Dynamic Configuration Block ##
_M.dynamic_configurations = false
_M.configuration_server = 'px-conf.perimeterx.net'
_M.configuration_server_port = 443
_M.load_interval = 5
-- ## END - Configuration block ##

_M.custom_block_url = nil
_M.redirect_on_custom_url = false

-- ## Debug Parameters ##
_M.px_debug = true
_M.s2s_timeout = 1000
_M.client_timeout = 2000
_M.cookie_encrypted = true
_M.px_maxbuflen = 10
_M.px_port = 443
_M.ssl_enabled = true
_M.enable_server_calls = true
_M.send_page_requested_activity = true
-- ## END - Configuration block ##

-- ## Filter Configuration ##

_M.whitelist = {
    uri_full = { _M.custom_block_url },
    uri_prefixes = {},
    uri_suffixes = { '.css', '.bmp', '.tif', '.ttf', '.docx', '.woff2', '.js', '.pict', '.tiff', '.eot', '.xlsx', '.jpg', '.csv', '.eps', '.woff', '.xls', '.jpeg', '.doc', '.ejs', '.otf', '.pptx', '.gif', '.pdf', '.swf', '.svg', '.ps', '.ico', '.pls', '.midi', '.svgz', '.class', '.png', '.ppt', '.mid', 'webp', '.jar' },
    ip_addresses = {},
    ua_full = {},
    ua_sub = {}
}

return _M
