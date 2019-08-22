<nav class="site-nav">
    <label class="site-nav__toggle" for="site-nav__toggle"></label>
    <input class="site-nav__toggle__checkbox" id="site-nav__toggle" type="checkbox">
   
    <div class="site-nav__container">
        {{# topics }}
            <input checked type="checkbox" id="topic-{{ id }}" class="site-nav__topics__toggle">
        {{/ topics }}

        <div class="site-nav__logo">
            <img class="site-nav__logo__image" src="/img/logo.svg">
            <p class="site-nav__logo__title">uischema.org</p>
        </div>

        <div class="site-nav__topics">
            {{# topics }}
                <label for="topic-{{ id }}" class="site-nav__topics__topic">{{ name }}</label>
            {{/ topics }}
        </div>
        
        <div class="site-nav__items">
            {{# schemas }}
                <a href="/{{ @type }}" data-ui-schema="{{ @type }}" class="site-nav__item{{^ @topic }} no-topic{{/ @topic }}{{# @topic }} topic-{{ id }}{{/ @topic }}">
                    <p class="site-nav__item__name">{{ @i18n.en.@name }}</p>
                    <p class="site-nav__item__description">{{ @i18n.en.@description }}</p>
                </a>
            {{/ schemas }}
        </div>
    </div>
</nav>
