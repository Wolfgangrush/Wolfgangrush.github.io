---
layout: default
title: Wolfgang Rush MCPB — اردو
permalink: /mcpb/ur/
---

# Wolfgang Rush MCPB — اردو

← [English](../) | [हिन्दी](../hi/) | [मराठी](../mr/) | [தமிழ்](../ta/) | [తెలుగు](../te/) | [বাংলা](../bn/) | [ગુજરાતી](../gu/) | [ಕನ್ನಡ](../kn/) | [ਪੰਜਾਬੀ](../pa/) | [മലയാളം](../ml/) | اردو

ہندوستانی وکلاء کے لیے 14 عدالت-مخصوص مسودہ-تیاری ایکسٹینشن۔ ہر ایکسٹینشن چھ-ایجنٹ پائپ لائن چلاتی ہے: Reader → Format → Drafter → Verifier → Refiner → Overseer۔ Reader مرحلے پر Pseudonymisation Gateway لاگو ہوتا ہے۔ تمام کام آپ کی مشین پر ہوتا ہے۔ کوئی ڈیٹا جمع نہیں۔

## 14 ایکسٹینشن

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

## انسٹالیشن

1. کسی بھی repo پر جائیں → Releases → تازہ ترین `.mcpb` فائل ڈاؤن لوڈ کریں
2. Claude Desktop App کھولیں → Settings (گیئر آئیکن) → **Extensions** → Install Extension
3. ڈاؤن لوڈ کردہ `.mcpb` فائل منتخب کریں → Open

(نوٹ: Settings → **Extensions** صحیح پینل ہے۔ Plugins یا Connectors نہیں۔)

## استعمال

نئی گفتگو میں:

```
[FIR / فیصلہ / نوٹس منسلک کریں]

[آپ کی ہائی کورٹ کا نام] کے لیے [کیس-قسم] کا مسودہ تیار کریں۔ indian-hc-drafting plugin استعمال کریں۔
```

## ⚠️ تصدیق سے انکار

AI غلطیاں کر سکتا ہے۔ ہر مسودہ ایک **آغازی نقطہ** ہے۔ دائر کرنے سے پہلے ہر قانونی حوالہ، اقتباس، حقیقت-دعویٰ، اور رجسٹری-فارمیٹ کی تصدیق کریں۔ دائر کرنے والا وکیل مواد کا ذمہ دار رہتا ہے۔

## 🔒 Pseudonymisation Procedure

Reader ایجنٹ ڈاؤن اسٹریم LLM-چلائے ایجنٹس حقائق دیکھنے سے پہلے — پارٹیوں کے نام، پتے، شناختی نمبر، مالی اعداد — ساختی placeholder سے تبدیل کرتا ہے۔ حقیقی ڈیٹا کبھی LLM میں نہیں جاتا۔

## ⚖️ DPDP ایکٹ 2023

Wolfgang Rush (پبلشر) اس سافٹ ویئر کے سلسلے میں Data Fiduciary یا Data Processor نہیں ہے۔ آپ (استعمال کرنے والے وکیل) اپنے کلائنٹ کے ڈیٹا کے Data Fiduciary ہیں — جو پہلے بھی تھا۔ مکمل DPDP تجزیہ: [English](../dpdp/)۔

→ مکمل تفصیلات: [English landing page](../) · [How agents work](../agents/) · [Install guide](../install/)
