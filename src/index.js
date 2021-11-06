import React from "react";
import ReactDOM from "react-dom";
import { BrowserRouter } from "react-router-dom";
import "./index.css";
import App from "./App";
import * as serviceWorker from "./serviceWorker";
import * as Sentry from '@sentry/browser';

Sentry.init({
    dsn: 'https://f87af05f66ac43ffba2266746b08b389@o920151.ingest.sentry.io/5865186'
});

ReactDOM.render(
    <BrowserRouter>
        <App />
    </BrowserRouter>,
    document.getElementById("root")
);

//test

serviceWorker.unregister();