<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>{{ page.title }}</title>
    <meta name="description" content="free mobile app for finding parking">
    <link rel="shortcut icon" href="favicon.ico">
  
    <meta name="viewport" content="width=device-width, minimum-scale=.5, maximum-scale=2, user-scalable=yes">
    <link rel="stylesheet" href="css/style.css" media="all">
    <link rel="stylesheet" href="css/wider.css" media="all and (min-width: 33.236em)">
    <link href="atom.xml" type="application/atom+xml" rel="alternate" title="ParkJam News Feed" />

    <!--[if (lt IE 9) & (!IEMobile)]>
    <link rel="stylesheet" href="css/wider.css" media="all">
    <![endif]-->
</head>
<body>
<article id="container">
  <header>
      <div class="logo">{% if page.id != 'home' %}<a href="/">{% endif %}<img src="img/parking72px-purple.png" alt="logo"/>{% if page.id != 'home' %}</a>{% endif %}</div>
      <h1 class="appname">{% if page.id != 'home' %}<a href="/">{% endif %}ParkJam{% if page.id != 'home' %}</a>{% endif %}</h1>
      <h2>{{ page.tagline }}</h2>
  </header>
{{ content }}
{% include theme/footer.md %}
</article>

{% include theme/analytics.md %}
</body>
</html>
