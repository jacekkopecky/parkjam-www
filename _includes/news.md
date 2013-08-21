{% for post in site.posts limit:3 %}
  {% capture this_year %}{{ post.date | date: "%Y" }}{% endcapture %}
  {% capture this_month %}{{ post.date | date: "%B" }}{% endcapture %}
  {% capture next_year %}{{ post.previous.date | date: "%Y" }}{% endcapture %}
  {% capture next_month %}{{ post.previous.date | date: "%B" }}{% endcapture %}

  {% if forloop.first %}
    <div class="newsbox column">
    <h3>news <a href="/atom.xml"><img src="/img/feed-icon-14x14.png" alt="news feed" /></a></h3>
  {% endif %}

    <div class="newsboxitem"><span class="date">{{ post.date | date: "%B %e, %Y" }}</span> &raquo; <a class="title" href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a>
      <div class="content">{% if post.content contains '<!--more-->' %}
        {{ post.content | split:'<!--more-->' | first }} <a class="readmore" href="{{ BASE_PATH }}{{ post.url }}">[read&nbsp;more]</a>
      {% else %}
        {{ post.content }}
      {% endif %}</div>
    </div>


  {% if forloop.last %}
      <div class="archivelink">&raquo; <a href="/archive.html">news archive</a></div>
    </div>
  {% endif %}
{% endfor %}
