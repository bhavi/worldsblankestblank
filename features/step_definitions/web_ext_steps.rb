Then /^I should see the following table:$/ do |table|
  max_width = table.raw.first.size + 1
  table_content = page.all('table tr').map do |row|
    row.all('td,th').map(&:text).first(max_width).map(&:strip)
  end

  table.diff! Cucumber::Ast::Table.new(table_content)
end

Then /^(?:|I )should see the following list:$/ do |table|
  table.raw.each_with_index do |element, i|
    page.should have_xpath("//li[#{i+1}][contains(normalize-space(.), '#{element.first}')]")
  end
end
