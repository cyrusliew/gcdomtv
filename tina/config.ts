import { defineConfig } from "tinacms";

// Your hosting provider likely uses process.env.NODE_ENV and process.env.VERCEL_ENV
// to determine the environment. Refer to their documentation. 
const branch = "main"; // For GitHub Pages, the branch is typically 'main' or the branch you're deploying from.

export default defineConfig({
  branch,

  build: {
    outputFolder: "admin",
    publicFolder: "_site",
  },
  media: {
    tina: {
      mediaRoot: "",
      publicFolder: "_site",
    },
  },
  schema: {
    collections: [
      {
        name: "post",
        label: "Posts",
        path: "src/posts",
        fields: [
          {
            type: "string",
            name: "title",
            label: "Title",
            isTitle: true,
            required: true,
          },
          {
            type: "rich-text",
            name: "body",
            label: "Body",
            isBody: true,
          },
        ],
      },
    ],
  },
});