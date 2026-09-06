markdown
# CSS File TODO List

## 🔴 HIGH PRIORITY

- [ ] REMOVE TINA CMS STUFF FROM NODE MODULES
- [x] Remove node_modules
- [x] contact form
- [ ] delete unused fonts
- [ ] sticky header

### 1. Define Missing Variable
- [ ] Define $max-width variable (currently referenced in commented code but never declared)
- [ ] Location: container section - //max-width: $max-width;
- [ ] Suggested value: $max-width: 1200px;

### 2. Remove Duplicate Code
- [ ] Remove duplicate $title-align declaration (appears twice - lines 20 and 28)
- [ ] Keep only one instance in the variables section

### 3. Fix Undefined Variable Reference
- [ ] Fix or remove commented $max-width reference in container rule
- [ ] Uncomment container width rule after defining variable

### 4. PICO Integration
- [ ] Import PICO for customisation (TODO comment at top of file)
- [ ] Add: @import "pico";
- [ ] Ensure PICO doesn't conflict with existing styles

## 🟡 MEDIUM PRIORITY

### 5. Icon Color Management
- [ ] Implement dynamic icon coloring (currently uses hardcoded white fill in SVGs)
- [ ] Options:
  - Use CSS filter property
  - Use SVG currentColor approach
  - Use mask-image technique
- [ ] Uncomment and implement TODO in icon-email section

### 6. Container Width Customization
- [ ] Uncomment and test container width rule:
.container,
main.container {
//max-width: $max-width;
}

text
- [ ] Test across different viewport sizes after uncommenting

### 7. Code Organization
- [ ] Refactor into partials:
- _variables.scss
- _base.scss
- _layout.scss
- _navigation.scss
- _components.scss
- _footer.scss

### 8. Review Selector Specificity
- [ ] Check if body > header could be simplified to just header
- [ ] Consider if nav.primary could be simplified
- [ ] Review nested selectors for over-specificity

## 🟢 LOW PRIORITY

### 9. CSS Architecture
- [ ] Adopt BEM naming convention for better maintainability
- [ ] Current classes needing review:
- .title-container → .title__container
- .primary-nav-outer-container → .nav--primary
- .site-title-break → .site-title__break

### 10. Performance Optimizations
- [ ] Combine duplicate nav selectors into single rule
- [ ] Review CSS cascade for potential overrides
- [ ] Remove unused commented code

### 11. Accessibility
- [ ] Check color contrast ratios (white text on green)
- [ ] Test if a:hover background change affects readability
- [ ] Add :focus states for interactive elements
- [ ] Test with screen readers

### 12. Browser Compatibility
- [ ] Test gap property in flex layouts for older browsers
- [ ] Add vendor prefixes for:
- border-radius
- box-shadow
- flex properties

### 13. Social Icons
- [ ] Add hover effects to .socials .icon
- [ ] Make social icons responsive on mobile
- [ ] Ensure social icons follow design system

## 📋 QUICK WINS

- [ ] Validate all color variables are used consistently
- [ ] Remove commented-out code once finalized
- [ ] Ensure footer links match design system
- [ ] Test all interactive elements (buttons, links, form elements)

## 🔍 TESTING CHECKLIST

- [ ] Test 1536px breakpoint container override
- [ ] Verify navigation alignment (currently center)
- [ ] Check card styles on mobile (flex-wrap behavior)
- [ ] Test button styles across all button types:
- button
- [type=submit]
- [type=reset]
- [type=button]
- [type=file]::file-selector-button
- [role=button]
- [ ] Verify social media icons display correctly
- [ ] Confirm footer styling matches design
- [ ] Test all responsive breakpoints
- [ ] Verify typography across all heading levels

## 💡 IMPROVEMENT SUGGESTIONS

- [ ] Consider using CSS Custom Properties instead of SCSS variables for runtime theming
- [ ] Create a color system with semantic names:
- $color-primary
- $color-accent
- $color-background
- $color-text
- [ ] Add responsive typography using clamp() or viewport units
- [ ] Implement dark mode support using CSS variables
- [ ] Consider extracting inline SVGs to separate files for better caching
- [ ] Add CSS minification for production builds

## 📝 NOTES

- The PICO import comment at the top indicates planned integration
- Color variables use both UK and US spelling (colour/color) - consider standardizing
- Some rules use !important (none found) - avoid if possible
- Consider using CSS Grid for layout instead of flex where appropriate

