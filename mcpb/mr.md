---
layout: default
title: Wolfgang Rush MCPB — मराठी
permalink: /mcpb/mr/
---

# Wolfgang Rush — Claude Desktop एक्सटेन्शन्स

← [English](../) | [हिन्दी](../hi/) | [தமிழ்](../ta/) | [తెలుగు](../te/) | [বাংলা](../bn/) | [ગુજરાતી](../gu/) | [ಕನ್ನಡ](../kn/) | [ਪੰਜਾਬੀ](../pa/) | [മലയാളം](../ml/) | [اردو](../ur/)

भारतीय वकिलांसाठी 14 न्यायालय-विशिष्ट मसुदा-तयारी एक्सटेन्शन्स. प्रत्येक एक्सटेन्शन सहा-एजंट पाइपलाइन वापरतो: Reader → Format → Drafter → Verifier → Refiner → Overseer. पहिल्या Reader टप्प्यावर Pseudonymisation Gateway लागू केले जाते. संपूर्ण काम तुमच्या मशीनवर होते. कोणताही डेटा संकलन नाही.

## 14 एक्सटेन्शन्स

1. **उच्च न्यायालय मसुदा** ([repo](https://github.com/Wolfgangrush/indian-hc-drafting-mcpb)) — सर्व 25 भारतीय HC · 28 बेंच एक्झेम्प्लर · 13 केस-प्रकार
2. **सर्वोच्च न्यायालय मसुदा** ([repo](https://github.com/Wolfgangrush/supreme-court-drafting-mcpb))
3. **जिल्हा न्यायालय मसुदा** ([repo](https://github.com/Wolfgangrush/district-court-drafting-mcpb)) — सिव्हिल + क्रिमिनल · 16 राज्य एक्झेम्प्लर
4. **कौटुंबिक न्यायालय मसुदा** ([repo](https://github.com/Wolfgangrush/indian-family-drafting-mcpb))
5. **ग्राहक मसुदा** ([repo](https://github.com/Wolfgangrush/indian-consumer-drafting-mcpb))
6. **MACT मसुदा** ([repo](https://github.com/Wolfgangrush/indian-mact-drafting-mcpb)) — 8 राज्य एक्झेम्प्लर
7. **बँकिंग मसुदा** ([repo](https://github.com/Wolfgangrush/indian-banking-drafting-mcpb)) — DRT, DRAT, NCLT, SARFAESI, IBC
8. **कामगार मसुदा** ([repo](https://github.com/Wolfgangrush/indian-labour-drafting-mcpb)) — 8 राज्य एक्झेम्प्लर
9. **बौद्धिक संपदा मसुदा** ([repo](https://github.com/Wolfgangrush/indian-ip-drafting-mcpb))
10. **कर मसुदा** ([repo](https://github.com/Wolfgangrush/indian-tax-drafting-mcpb))
11. **मालमत्ता मसुदा** ([repo](https://github.com/Wolfgangrush/indian-property-drafting-mcpb)) — 8 राज्य एक्झेम्प्लर
12. **करार मसुदा** ([repo](https://github.com/Wolfgangrush/indian-contracts-drafting-mcpb))
13. **कंपनी मसुदा** ([repo](https://github.com/Wolfgangrush/indian-company-drafting-mcpb)) — NCLT, NCLAT
14. **भाडे नियंत्रण मसुदा** ([repo](https://github.com/Wolfgangrush/indian-rent-control-drafting-mcpb)) — महाराष्ट्र भाडे नियंत्रण कायदा 1999 + 7 इतर राज्ये

## स्थापना

1. कोणत्याही repo वर जा → Releases → नवीनतम `.mcpb` फाइल डाउनलोड करा
2. Claude Desktop App उघडा → Settings (गियर आयकॉन) → **Extensions** → Install Extension
3. डाउनलोड केलेली `.mcpb` फाइल निवडा → Open

(लक्षात ठेवा: Settings → **Extensions** हे योग्य पॅनेल आहे. Plugins किंवा Connectors नाही.)

## वापर

नवीन संभाषणात:

```
[FIR / निकाल / नोटीस जोडा]

[तुमच्या उच्च न्यायालयाचे नाव] साठी [केस-प्रकार] चा मसुदा तयार करा. indian-hc-drafting plugin वापरा.
```

## ⚠️ पडताळणी अस्वीकरण

AI चुका करू शकते. प्रत्येक मसुदा एक **प्रारंभिक बिंदू** आहे. दाखल करण्यापूर्वी प्रत्येक वैधानिक संदर्भ, उद्धरण, तथ्यात्मक दावा आणि रजिस्ट्री-स्वरूप पडताळून पहा. फाइल करणारा वकील सामग्रीसाठी जबाबदार राहतो.

## 🔒 Pseudonymisation Procedure

Reader एजंट डाउनस्ट्रीम LLM-संचालित एजंटांना तथ्ये पाहण्यापूर्वी — पक्षांची नावे, पत्ते, ओळख क्रमांक, आर्थिक आकडे — संरचनात्मक प्लेसहोल्डर्सने बदलतो. खरा डेटा कधीच LLM मध्ये जात नाही.

## ⚖️ DPDP अधिनियम 2023

Wolfgang Rush (प्रकाशक) या सॉफ्टवेअरच्या संदर्भात Data Fiduciary किंवा Data Processor नाही. तुम्ही (वापरणारे वकील) तुमच्या क्लायंटच्या डेटाचे Data Fiduciary आहात — जे आधीही होते. संपूर्ण DPDP विश्लेषण: [English](../dpdp/).

→ संपूर्ण तपशील: [English landing page](../) · [How agents work](../agents/) · [Install guide](../install/)
