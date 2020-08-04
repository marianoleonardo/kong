local function build_form_params(conf)

    local grant_type = "urn:ietf:params:oauth:grant-type:uma-ticket"
    local scope = conf.scopes[kong.request.get_method()]

    return "grant_type=" .. grant_type .. "&audience=" .. conf.resource_server_id .. "&permission=" .. conf.resource ..
               "%23" .. scope .. "&response_mode=decision"

end

return {
    build_form_params = build_form_params
}
