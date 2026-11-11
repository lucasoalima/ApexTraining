<h1 align="center">Apex Academy — Salesforce Development Practice</h1>

<p align="center">
  Hands-on <b>Salesforce</b> development practice (Apex, Lightning Web Components and
  platform metadata), organized as a Salesforce DX project. Built while training for
  Salesforce development.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Salesforce-00A1E0?logo=salesforce&logoColor=white" alt="Salesforce">
  <img src="https://img.shields.io/badge/Apex-1798c1" alt="Apex">
  <img src="https://img.shields.io/badge/LWC-javascript-f7df1e?logo=javascript&logoColor=black" alt="LWC">
</p>

## 📝 About
A Salesforce DX (`sfdx`) project used to study and practice platform development:
Apex triggers, Lightning Web Components (LWC), and custom objects/fields metadata.

## ✨ Contents
- **Apex triggers** (e.g. `WarrantySummary.trigger`).
- **Lightning Web Components** under `force-app/main/default/lwc`.
- **Custom objects & fields** metadata under `force-app/main/default/objects`.

## 🚀 How to run (Salesforce DX)
Requires the **Salesforce CLI** and a Dev Hub / scratch org.
```bash
cd ApexAcademy
sf org login web --set-default-dev-hub      # authorize a Dev Hub
sf org create scratch -f config/project-scratch-def.json -a apex-academy --set-default
sf project deploy start                      # push metadata to the scratch org
sf org open                                  # open the org
```

## 📁 Project structure
```
ApexTraining/
└── ApexAcademy/                  # Salesforce DX project
    ├── force-app/main/default/   # Apex, LWC, objects, triggers (metadata)
    ├── config/                   # scratch org definition
    └── manifest/package.xml      # metadata manifest
```

---
<p align="center"><a href="https://www.linkedin.com/in/lucasoalima/">LinkedIn</a> &middot; <a href="https://github.com/lucasoalima">GitHub</a></p>
