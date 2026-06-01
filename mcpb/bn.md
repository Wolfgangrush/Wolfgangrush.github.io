---
layout: default
title: Wolfgang Rush MCPB — বাংলা
permalink: /mcpb/bn/
---

# Wolfgang Rush MCPB — বাংলা

← [English](../) | [हिन्दी](../hi/) | [मराठी](../mr/) | [தமிழ்](../ta/) | [తెలుగు](../te/) | বাংলা | [ગુજરાતી](../gu/) | [ಕನ್ನಡ](../kn/) | [ਪੰਜਾਬੀ](../pa/) | [മലയാളം](../ml/) | [اردو](../ur/)

ভারতীয় আইনজীবীদের জন্য 14টি আদালত-নির্দিষ্ট খসড়া-প্রস্তুতি এক্সটেনশন। প্রতিটি এক্সটেনশন ছয়-এজেন্ট পাইপলাইন চালায়: Reader → Format → Drafter → Verifier → Refiner → Overseer। Reader ধাপে Pseudonymisation Gateway প্রয়োগ করা হয়। সমস্ত কাজ আপনার মেশিনে হয়। কোনো ডেটা সংগ্রহ নেই।

## 14টি এক্সটেনশন

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

## ইনস্টলেশন

1. যেকোনো repo এ যান → Releases → সর্বশেষ `.mcpb` ফাইল ডাউনলোড করুন
2. Claude Desktop App খুলুন → Settings (গিয়ার আইকন) → **Extensions** → Install Extension
3. ডাউনলোড করা `.mcpb` ফাইল নির্বাচন করুন → Open

(বিঃদ্রঃ Settings → **Extensions** সঠিক প্যানেল। Plugins বা Connectors নয়।)

## ব্যবহার

নতুন কথোপকথনে:

```
[FIR / রায় / নোটিশ সংযুক্ত করুন]

[আপনার হাইকোর্টের নাম] এর জন্য [কেস-প্রকার] এর খসড়া তৈরি করুন। indian-hc-drafting plugin ব্যবহার করুন।
```

## ⚠️ যাচাইকরণ দায়িত্ব অস্বীকার

AI ভুল করতে পারে। প্রতিটি খসড়া একটি **শুরুর বিন্দু**। ফাইল করার আগে প্রতিটি আইনি উল্লেখ, উদ্ধৃতি, তথ্য-দাবি এবং রেজিস্ট্রি-ফরম্যাট যাচাই করুন। ফাইলকারী আইনজীবী বিষয়বস্তুর জন্য দায়ী থাকেন।

## 🔒 Pseudonymisation Procedure

Reader এজেন্ট ডাউনস্ট্রিম LLM-চালিত এজেন্টরা তথ্য দেখার আগেই — পক্ষের নাম, ঠিকানা, পরিচয় নম্বর, আর্থিক সংখ্যা — কাঠামোগত placeholder দিয়ে প্রতিস্থাপন করে। প্রকৃত ডেটা কখনো LLM তে যায় না।

## ⚖️ DPDP আইন 2023

Wolfgang Rush (প্রকাশক) এই সফটওয়্যারের ক্ষেত্রে Data Fiduciary বা Data Processor নন। আপনি (ব্যবহারকারী আইনজীবী) আপনার ক্লায়েন্টের ডেটার Data Fiduciary — এটি আগেও ছিল। সম্পূর্ণ DPDP বিশ্লেষণ: [English](../dpdp/)।

→ সম্পূর্ণ বিবরণ: [English landing page](../) · [How agents work](../agents/) · [Install guide](../install/)
