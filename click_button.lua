-- function main(splash)
--     -- Set the URL
--     local url = splash.args.url
--   	splash:set_viewport_full()
--     assert(splash:go(url))
-- 		splash:wait(2)
--     -- Click the element
--    local get_element_dim_by_xpath = splash:jsfunc([[
--                                     function(xpath) {
--                                         var element = document.evaluate(xpath, document, null,
--                                             XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue;
--                                         var element_rect = element.getClientRects()[0];
--                                         return {"x": element_rect.left, "y": element_rect.top}
--                                     }
--                                 ]])
 
  
--     local year_drop_dimensions = get_element_dim_by_xpath(
--                                         '//div[@class="FPdoLc lJ9FBc"]/center/input[@class="RNmpXc"]')
--   splash:wait(1.5)
--   if year_drop_dimensions.x > 0 then  
--   	splash:set_viewport_full()
--     splash:wait(1.5)
--     ok, reason = splash:mouse_click(year_drop_dimensions.x,year_drop_dimensions.y)
--     if not ok then
--     	return ok
--     end
--   	splash:wait(5)
--     -- Return the HTML content after clicking
--     return {
--     point = {year_drop_dimensions.x,year_drop_dimensions.y},
--     png= splash:png(),
--         html = splash:html(),
--         url = splash:url(),
--     }
--     else
--      return "Not found"
--     end
-- endcd. 




function main(splash)
  -- Set the URL
  local url = 'www.google.com'
  splash:set_viewport_full()
  assert(splash:go(url))
  splash:wait(2)
  -- Click the element
local element = splash:select('.FPdoLc > center:nth-child(1) > input:nth-child(2)')

splash:wait(1.5)
 assert(element:mouse_click())
  
  splash:wait(5)
  -- Return the HTML content after clicking
  return {    png= splash:png(),
      html = splash:html(),
      url = splash:url(),
  }
  
end

