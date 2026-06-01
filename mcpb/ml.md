---
layout: default
title: Wolfgang Rush MCPB — മലയാളം
permalink: /mcpb/ml/
---

# Wolfgang Rush MCPB — മലയാളം

← [English](../) | [हिन्दी](../hi/) | [मराठी](../mr/) | [தமிழ்](../ta/) | [తెలుగు](../te/) | [বাংলা](../bn/) | [ગુજરાતી](../gu/) | [ಕನ್ನಡ](../kn/) | [ਪੰਜਾਬੀ](../pa/) | മലയാളം | [اردو](../ur/)

ഇന്ത്യൻ അഭിഭാഷകർക്കായി 14 കോടതി-നിർദ്ദിഷ്ട കരട്-തയ്യാറാക്കൽ വിപുലീകരണങ്ങൾ. ഓരോ വിപുലീകരണവും ആറ്-ഏജന്റ് പൈപ്പ്‌ലൈൻ പ്രവർത്തിപ്പിക്കുന്നു: Reader → Format → Drafter → Verifier → Refiner → Overseer. Reader ഘട്ടത്തിൽ Pseudonymisation Gateway പ്രയോഗിക്കുന്നു. എല്ലാ ജോലിയും നിങ്ങളുടെ മെഷീനിൽ നടക്കുന്നു. ഡാറ്റ ശേഖരണം ഇല്ല.

## 14 വിപുലീകരണങ്ങൾ

1. **Indian HC Drafting** ([repo](https://github.com/Wolfgangrush/indian-hc-drafting-mcpb))
2. **Supreme Court Drafting** ([repo](https://github.com/Wolfgangrush/supreme-court-drafting-mcpb))
3. **District Court Drafting** ([repo](https://github.com/Wolfgangrush/district-court-drafting-mcpb))
4. **Family Drafting** ([repo](https://github.com/Wolfgangrush/indian-family-drafting-mcpb))
5. **Consumer Drafting** ([repo](https://github.com/Wolfgangrush/indian-consumer-drafting-mcpb))
6. **MACT Drafting** ([repo](https://github.com/Wolfgangrush/indian-mact-drafting-mcpb))
7. **Banking Drafting** ([repo](https://github.com/Wolfgangrush/indian-banking-drafting-mcpb))
8. **Labour Drafting** ([repo](https://github.com/Wolfgangrush/indian-labour-drafting-mcpb))
9. **IP Drafting** ([repo](https://github.com/Wolfgangrush/indian-ip-drafting-mcpb))
10. **Tax Drafting** ([repo](https://github.com/Wolfgangrush/indian-tax-drafting-mcpb))
11. **Property Drafting** ([repo](https://github.com/Wolfgangrush/indian-property-drafting-mcpb))
12. **Contracts Drafting** ([repo](https://github.com/Wolfgangrush/indian-contracts-drafting-mcpb))
13. **Company Drafting** ([repo](https://github.com/Wolfgangrush/indian-company-drafting-mcpb))
14. **Rent Control Drafting** ([repo](https://github.com/Wolfgangrush/indian-rent-control-drafting-mcpb))

## ഇൻസ്റ്റാളേഷൻ

1. ഏതെങ്കിലും repo യിലേക്ക് പോകുക → Releases → ഏറ്റവും പുതിയ `.mcpb` ഫയൽ ഡൗൺലോഡ് ചെയ്യുക
2. Claude Desktop App തുറക്കുക → Settings (ഗിയർ ഐക്കൺ) → **Extensions** → Install Extension
3. ഡൗൺലോഡ് ചെയ്ത `.mcpb` ഫയൽ തിരഞ്ഞെടുക്കുക → Open

(ശ്രദ്ധിക്കുക: Settings → **Extensions** ശരിയായ പാനൽ. Plugins അല്ലെങ്കിൽ Connectors അല്ല.)

## ഉപയോഗം

പുതിയ സംഭാഷണത്തിൽ:

```
[FIR / വിധി / നോട്ടീസ് അറ്റാച്ച് ചെയ്യുക]

[നിങ്ങളുടെ ഹൈക്കോടതിയുടെ പേര്] നായി [കേസ്-തരം] കരട് തയ്യാറാക്കുക. indian-hc-drafting plugin ഉപയോഗിക്കുക.
```

## ⚠️ പരിശോധന നിരാകരണം

AI തെറ്റുകൾ വരുത്താം. ഓരോ കരടും ഒരു **ആരംഭ പോയിന്റ്**. ഫയൽ ചെയ്യുന്നതിന് മുമ്പ് ഓരോ നിയമ പരാമർശം, ഉദ്ധരണി, വസ്തുതാ-അവകാശം, രജിസ്ട്രി-ഫോർമാറ്റ് സ്ഥിരീകരിക്കുക. ഫയൽ ചെയ്യുന്ന അഭിഭാഷകൻ ഉള്ളടക്കത്തിന് ഉത്തരവാദിയാണ്.

## 🔒 Pseudonymisation Procedure

Reader ഏജന്റ് ഡൗൺസ്ട്രീം LLM-നയിക്കുന്ന ഏജന്റുമാർ വസ്തുതകൾ കാണുന്നതിന് മുമ്പ് — കക്ഷികളുടെ പേരുകൾ, വിലാസങ്ങൾ, തിരിച്ചറിയൽ നമ്പറുകൾ, സാമ്പത്തിക സംഖ്യകൾ — ഘടനാപരമായ placeholder ഉപയോഗിച്ച് മാറ്റിസ്ഥാപിക്കുന്നു. യഥാർത്ഥ ഡാറ്റ ഒരിക്കലും LLM ലേക്ക് പോകുന്നില്ല.

## ⚖️ DPDP ആക്റ്റ് 2023

Wolfgang Rush (പ്രസാധകൻ) ഈ സോഫ്റ്റ്‌വെയറുമായി ബന്ധപ്പെട്ട് Data Fiduciary അല്ലെങ്കിൽ Data Processor അല്ല. നിങ്ങൾ (ഉപയോഗിക്കുന്ന അഭിഭാഷകൻ) നിങ്ങളുടെ ക്ലയന്റിന്റെ ഡാറ്റയുടെ Data Fiduciary ആണ് — ഇത് മുമ്പും അങ്ങനെയായിരുന്നു. പൂർണ്ണ DPDP വിശകലനം: [English](../dpdp/).

→ പൂർണ്ണ വിശദാംശങ്ങൾ: [English landing page](../) · [How agents work](../agents/) · [Install guide](../install/)
