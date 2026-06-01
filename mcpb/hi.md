---
layout: default
title: Wolfgang Rush MCPB — हिन्दी
permalink: /mcpb/hi/
---

# Wolfgang Rush — Claude Desktop एक्सटेंशन

← [English](../) | [मराठी](../mr/) | [தமிழ்](../ta/) | [తెలుగు](../te/) | [বাংলা](../bn/) | [ગુજરાતી](../gu/) | [ಕನ್ನಡ](../kn/) | [ਪੰਜਾਬੀ](../pa/) | [മലയാളം](../ml/) | [اردو](../ur/)

भारतीय अधिवक्ताओं के लिए 14 न्यायालय-विशिष्ट मसौदा-तैयारी एक्सटेंशन। प्रत्येक एक्सटेंशन छह-एजेंट पाइपलाइन के माध्यम से चलता है: Reader → Format → Drafter → Verifier → Refiner → Overseer। पहले Reader चरण में Pseudonymisation Gateway लागू होता है। संपूर्ण कार्य आपके अपने मशीन पर होता है। कोई डेटा संग्रह नहीं।

## 14 एक्सटेंशन

1. **उच्च न्यायालय मसौदा** ([repo](https://github.com/Wolfgangrush/indian-hc-drafting-mcpb)) — सभी 25 भारतीय HC · 28 बेंच एक्सेम्प्लर · 13 मामले-प्रकार (PIL, रिट, आपराधिक अपील, धारा 482 CrPC / 528 BNSS, जमानत, अग्रिम जमानत, अवमानना, MACT अपील, वैवाहिक अपील)
2. **सर्वोच्च न्यायालय मसौदा** ([repo](https://github.com/Wolfgangrush/supreme-court-drafting-mcpb)) — SLP, अनुच्छेद 32 रिट, स्थानांतरण याचिका, उपचारात्मक याचिका, पुनरीक्षण
3. **जिला न्यायालय मसौदा** ([repo](https://github.com/Wolfgangrush/district-court-drafting-mcpb)) — सिविल + आपराधिक · 16 राज्य एक्सेम्प्लर
4. **पारिवारिक न्यायालय मसौदा** ([repo](https://github.com/Wolfgangrush/indian-family-drafting-mcpb)) — तलाक, भरण-पोषण, अभिरक्षा, गोद लेना
5. **उपभोक्ता मसौदा** ([repo](https://github.com/Wolfgangrush/indian-consumer-drafting-mcpb)) — जिला/राज्य/NCDRC
6. **MACT मसौदा** ([repo](https://github.com/Wolfgangrush/indian-mact-drafting-mcpb)) — मोटर दुर्घटना दावा अधिकरण · 8 राज्य एक्सेम्प्लर
7. **बैंकिंग मसौदा** ([repo](https://github.com/Wolfgangrush/indian-banking-drafting-mcpb)) — DRT, DRAT, NCLT, SARFAESI, IBC
8. **श्रम मसौदा** ([repo](https://github.com/Wolfgangrush/indian-labour-drafting-mcpb)) — श्रम न्यायालय, औद्योगिक अधिकरण · 8 राज्य एक्सेम्प्लर
9. **बौद्धिक संपदा मसौदा** ([repo](https://github.com/Wolfgangrush/indian-ip-drafting-mcpb)) — ट्रेडमार्क, पेटेंट, कॉपीराइट, डिज़ाइन, GI
10. **कर मसौदा** ([repo](https://github.com/Wolfgangrush/indian-tax-drafting-mcpb)) — CIT(A), ITAT, धारा 148A/263/264/270A/144C/201/260A
11. **संपत्ति मसौदा** ([repo](https://github.com/Wolfgangrush/indian-property-drafting-mcpb)) — विभाजन, घोषणा, कब्जा · 8 राज्य एक्सेम्प्लर
12. **अनुबंध मसौदा** ([repo](https://github.com/Wolfgangrush/indian-contracts-drafting-mcpb)) — संविदा अधिनियम 1872, विशिष्ट अनुतोष, मध्यस्थता
13. **कंपनी मसौदा** ([repo](https://github.com/Wolfgangrush/indian-company-drafting-mcpb)) — NCLT, NCLAT, कंपनी अधिनियम 2013
14. **किराया नियंत्रण मसौदा** ([repo](https://github.com/Wolfgangrush/indian-rent-control-drafting-mcpb)) — 8 राज्य किराया नियंत्रण अधिनियम + Model Tenancy Act 2021

## स्थापना

1. ऊपर किसी भी repo पर जाएँ → Releases → नवीनतम `.mcpb` फ़ाइल डाउनलोड करें
2. Claude Desktop App खोलें → Settings (गियर आइकन) → **Extensions** → Install Extension
3. डाउनलोड की गई `.mcpb` फ़ाइल चुनें → Open

(ध्यान दें: Settings → **Extensions** सही पैनल है। Plugins या Connectors नहीं।)

## उपयोग

नई बातचीत में:

```
[FIR / निर्णय / नोटिस संलग्न करें]

[उच्च न्यायालय का नाम] के लिए [मामले का प्रकार] का मसौदा तैयार करें। indian-hc-drafting plugin का उपयोग करें।
```

## ⚠️ सत्यापन अस्वीकरण

AI गलतियाँ कर सकता है। हर मसौदा एक **प्रारंभिक बिंदु** है। दाखिल करने से पहले हर वैधानिक संदर्भ, उद्धरण, तथ्यात्मक दावा और रजिस्ट्री-प्रारूप सत्यापित करें। फ़ाइल करने वाला अधिवक्ता सामग्री के लिए ज़िम्मेदार रहता है।

## 🔒 Pseudonymisation Procedure

Reader एजेंट डाउनस्ट्रीम LLM-संचालित एजेंटों के तथ्यों को संसाधित करने से पहले — पक्षों के नाम, पते, पहचान-संख्या, वित्तीय आंकड़े — संरचनात्मक प्लेसहोल्डर से बदल देता है। वास्तविक डेटा कभी LLM में नहीं जाता।

## ⚖️ DPDP अधिनियम 2023

Wolfgang Rush (प्रकाशक) इस सॉफ़्टवेयर के संबंध में न तो Data Fiduciary है न ही Data Processor। आप (उपयोग करने वाले अधिवक्ता) अपने मुवक्किल के डेटा के Data Fiduciary हैं — जो पहले भी थे। संपूर्ण DPDP विश्लेषण: [English](../dpdp/)।

→ संपूर्ण विवरण: [English landing page](../) · [How agents work](../agents/) · [Install guide](../install/)
