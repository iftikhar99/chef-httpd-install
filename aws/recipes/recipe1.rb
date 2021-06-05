#
# Cookbook:: aws
# Recipe:: recipe1
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package 'tree' do
action :install
end

file '/myfile2' do
content 'This is My Second Project code'
action :create
owner 'root'
group 'root'
end

package 'httpd' do
action :install
end

file '/var/www/html/index.html' do
content '<html>
<head>

    <title>Iftikhar Ahmad</title>
</head>
<body style="background-color: cyan">

<h1>Welcome to Iftikhar Ahmad -Page</h1>
</body>
</html>'
action :create
end


service 'httpd' do
action [:enable, :start]
end
