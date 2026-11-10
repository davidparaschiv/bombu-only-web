# Frontend project selection

- Before a frontend change, always ask the user to choose SHIFT Beat or Bombu. Once they select a project, complete that request within the selected project.
- This folder is Bombu's website. The original SHIFT Beat website must remain unchanged.
- Keep the responsive layout and billing behavior. Country/city loading needs no added tests or rate limiting.
- Keep server secrets out of browser files. site-config.js contains only public configuration.
- No Supabase operations or backend changes as part of frontend work. The owner performs backend deployment and migrations.
- The download URL is the owner-supplied bombu-only-web latest-release asset Bombu.dmg. The customer-portal URL still retains the previous Stripe value until the owner confirms or replaces it.
- Only the new bombu-only-web repository may be used for deployment. The user requested no .git directory in this initial copy.
