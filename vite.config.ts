import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    // host: true,
    host: "0.0.0.0",
    port: 3100, // This is the port which we will use in docker
    //https://vitejs.dev/config/server-options.html#server-hmr
    hmr: {
      overlay: true,
      port: 3100,
      clientPort: 3100,
    },
    watch: {
      usePolling: true,
    },
  },
});
