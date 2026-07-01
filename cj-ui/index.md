# CJ-UI API Reference

Cangjie language implementation of HarmonyOS API reference, for LLM consumption via MCP tools (context7 / doc-mcp class) retrieval.

> Two-layer structure: this page → subsystem list (link) → each subsystem index → symbol detail page.

---

## ArkUI Framework

- [component](./arkui/cj/component/index.md) — UI component library (Button, Slider, Text, List, Grid, etc.)
- [base](./arkui/cj/base/index.md) — base types (Color, Length, Resource, Callback, etc.)
- [state_manage](./arkui/cj/state_manage/index.md) — state management (AppStorage, LocalStorage, ObservedProperty, etc.)
- [ui_resource](./arkui/cj/ui_resource/index.md) — resource value access (getResourceString/Color/Length/Media)
- [matrix4](./arkui/cj/matrix4/index.md) — 4x4 transformation matrix
- [animator](./arkui/cj/animator/index.md) — animation player
- [font](./arkui/cj/font/index.md) — font registration and query
- [measure](./arkui/cj/measure/index.md) — text measurement
- [router](./arkui/cj/router/index.md) — page router
- [prompt_action](./arkui/cj/prompt_action/index.md) — dialogs and menus
- [concurrency](./arkui/cj/concurrency/index.md) — concurrent task scheduling

## Application and Lifecycle

- [ability](./ability/index.md) — Ability lifecycle, Want, Context
- [eventhub](./eventhub/index.md) — event bus

## Window and Display

- [window](./window/index.md) — window management
- [color_manager](./color_manager/index.md) — color space

## Image

- [image](./image/index.md) — image encode/decode, PixelMap, ImageSource

## Resources and Bundles

- [resource_manager](./resource_manager/index.md) — resource management
- [bundle_manager](./bundle_manager/index.md) — bundle management

## Communication

- [rpc](./rpc/index.md) — cross-process communication

## Web

- [web](./web/index.md) — Web network error code

## Logging

- [hilog](./hilog/index.md) — log

## Annotation Infrastructure

- [labels](./labels/index.md) — @APILevel annotation and permission annotation

---
