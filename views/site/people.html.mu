This is an example of using mustache templating and <a href='http://www.mongoosejs.com'>mongoose</a> based model
{{#docs}}
<p>
{{#doc}}
    Name: {{name}}
    Age: {{age}}
    {{#rank}}Rank: {{rank}}{{/rank}}
{{/doc}}
</p>
{{/docs}}