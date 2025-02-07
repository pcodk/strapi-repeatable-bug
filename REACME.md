## Minimal Strpi setup to reproduce the issue
This critical bug appears in the content manager when filling out repeatable components. 

If you component have a short form text input field and you press enter in that field when filling out the form, then the first element in your list of components is deleted, no matter what component you are currently editing. 

### Videos of the issue
- [Video 1](./demo/repeatable%20component%20bug.mp4)
- [Video 2](./demo/repeatable%20component%20bug%202.mp4)


### How to use

1. Clone the repository
2. From root run `docker compose up -d
3. From ./component-delete run `yarn install`
4. From ./component-delete run `yarn develop`
5. Open the browser and navigate to (localhost)[http://localhost:1337/admin/content-manager/collection-types/api::repeatable-quote.repeatable-quote/tmlmollog0zctov16ne4noxh]


### Reproduce the issue

1. Add a new repeatable component
2. Focus a short text input field in a repeatable component
3. Press enter

### Steps to reproduce without using the repository

I have made a fresh github repo (see link) that, give you all that is needed to reproduce.  


But you can also do it from a freshly installed strapi instance:

1. `yarn create strapi`
2. Follow the guide choosing, skip login, postgres, Start with an example structure & data? (YES), Start with Typescript? (YES), Install dependencies with yarn? (YES)
3. `yarn develop`
4. Create a admin user and a new article in the content manager. 
5. Add a block with a "Quote" and press save. 
6. Add a second block with a quote. 
7. Focus the title input field and press enter. 
