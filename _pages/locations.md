---
layout: default
title: Help us build a network of Palestine resources
---
<div class="standard-page">
  <div class="locations-page">
    <p>We're asking supporters to request books on Palestine at their local libraries. This page lists libraries that have already received requests, with contact details for making your own. If you don't see your library here, use our template to make a request — and then let us know so we can add it to the list.</p>
    
    {% assign locations = site.locations %}
    
    {%- if locations.size > 0 -%}
      <ul class="locations-list">
        {%- for location in locations -%}
          <li>
            <a href="{{ location.url | relative_url }}">
              {{ location.title | default: location.name | escape }}
            </a>
            {%- if location.address -%}
              <span class="location-address">{{ location.address }}</span>
            {%- endif -%}
          </li>
        {%- endfor -%}
      </ul>
    {%- else -%}
      <p>No locations found.</p>
    {%- endif -%}
  </div>
</div>