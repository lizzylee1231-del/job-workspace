-- 把 Lee 已有的 25 条投递记录导入求职工作台
-- 用法：先在 Supabase 建好项目并跑完 supabase/setup.sql，
-- 再在 Authentication → Users 里建好邮箱为 lizzylee1231@163.com 的用户（勾选 Auto Confirm），
-- 然后在 SQL Editor 里运行本文件。重复运行是安全的（按 id 覆盖更新）。

-- #01 新潮传媒集团｜产品经理（AI健康管理C端）（已投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee01', u.id, 'app', '{"id":"app_lee01","company":"新潮传媒集团","role":"产品经理（AI健康管理C端）","city":"未注明","channel":"BOSS直聘","appliedAt":"2026-11-02","stage":"已投递","fit":"⚠️ 可以冲","direction":"AI 产品","greeting":"您好，我是Chaiee，7年女性健康科普内容经验，服务过50+品牌。过去半年独立搭建运营了一个150+天的AI陪伴Agent，也负责过情绪记录产品暖窝的后端与AI回应设计。想跟您聊聊这个AI健康管理岗位。","nextStep":"","nextAt":"","notes":"薪资 12-18K。","events":[],"history":[],"progressAt":"2026-11-02"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #02 旅鸽病案｜产品经理（AI医疗方向）（已投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee02', u.id, 'app', '{"id":"app_lee02","company":"旅鸽病案","role":"产品经理（AI医疗方向）","city":"未注明","channel":"BOSS直聘","appliedAt":"2026-11-02","stage":"已投递","fit":"❌ 先放放","direction":"AI 产品","greeting":"（备用）您好，我是Chaiee，7年女性健康科普内容经验。过去半年独立搭建运营了一个150+天的AI陪伴Agent，也做过医疗方向的银龄稳动和Cycle Flow。想跟您聊聊这个AI医疗产品经理岗位。","nextStep":"","nextAt":"","notes":"薪资 15-20K。Koda 评估先放放，Lee 坚持投了。","events":[],"history":[],"progressAt":"2026-11-02"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #03 华西数字医疗科技｜AI产品经理（已投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee03', u.id, 'app', '{"id":"app_lee03","company":"华西数字医疗科技","role":"AI产品经理","city":"未注明","channel":"BOSS直聘","appliedAt":"2026-11-02","stage":"已投递","fit":"✅ 够得上","direction":"AI 产品","greeting":"您好~我对这个岗很感兴趣。7年女性健康科普内容经验，做过老年复健训练指导demo的处方模块、女性健康周期管理demo和情绪记录产品的后端与AI回应设计。期待回复~可以发您简历和作品集。","nextStep":"","nextAt":"","notes":"薪资 12-15K。须确认“在读”要求；最匹配的岗位之一；华西系，成都可能性大。","events":[],"history":[],"progressAt":"2026-11-02"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #04 源宠科技｜产品经理（宠物智能硬件/宠物类APP）（已投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee04', u.id, 'app', '{"id":"app_lee04","company":"源宠科技","role":"产品经理（宠物智能硬件/宠物类APP）","city":"未注明","channel":"BOSS直聘","appliedAt":"2026-11-02","stage":"已投递","fit":"⚠️ 可以冲","direction":"AI 产品","greeting":"您好~我对这个岗很感兴趣，自己养了两只猫。7年女性健康科普内容经验，做过猫泌尿健康管理的PWA和情绪记录产品暖窝的后端与AI回应设计。期待回复~可以发您简历和作品集。","nextStep":"","nextAt":"","notes":"薪资 11-20K。切入点：猫泌尿健康管理 PWA。","events":[],"history":[],"progressAt":"2026-11-02"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #05 腾讯｜大模型数据专家-复杂任务（不考虑）
insert into public.items (id, user_id, kind, data)
select 'app_lee05', u.id, 'app', '{"id":"app_lee05","company":"腾讯","role":"大模型数据专家-复杂任务","city":"未注明","channel":"BOSS直聘","appliedAt":"","stage":"不考虑","fit":"✅ 够得上","direction":"AI 产品","greeting":"您好~我对这个岗很感兴趣。7年女性健康科普内容经验，做过150+篇原创科普，也做过Prompt对照测试和模型效果对比。期待回复~可以发您简历和作品集。","nextStep":"","nextAt":"","notes":"薪资 10-15K。Lee 决定不投：重复标注强度大，精力有限。","events":[],"history":[],"progressAt":"2026-11-05"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #06 大姨妈APP｜社区产品经理（商业化方向）（已投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee06', u.id, 'app', '{"id":"app_lee06","company":"大姨妈APP","role":"社区产品经理（商业化方向）","city":"未注明","channel":"BOSS直聘","appliedAt":"2026-11-02","stage":"已投递","fit":"⚠️ 可以冲","direction":"AI 产品","greeting":"您好~我对这个岗很感兴趣。7年女性健康科普内容经验，做过50+品牌商业化内容和10+场电商活动，也做过女性生理周期管理demo。期待回复~可以发您简历和作品集。","nextStep":"","nextAt":"","notes":"薪资 15-20K。城市未注明。","events":[],"history":[],"progressAt":"2026-11-02"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #07 大姨妈APP｜内容运营（已投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee07', u.id, 'app', '{"id":"app_lee07","company":"大姨妈APP","role":"内容运营","city":"未注明","channel":"BOSS直聘","appliedAt":"2026-11-02","stage":"已投递","fit":"✅ 够得上","direction":"内容策划","greeting":"您好~我对这个岗很感兴趣。7年健康、情感方向内容运营经验，做过150+篇健康科普和50+品牌商业化内容。期待回复~可以发您简历和作品集。","nextStep":"","nextAt":"","notes":"薪资 8-13K。最对口的一份；须确认城市（不接受居家办公）。","events":[],"history":[],"progressAt":"2026-11-02"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #08 美哆网络｜小红书内容运营（已投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee08', u.id, 'app', '{"id":"app_lee08","company":"美哆网络","role":"小红书内容运营","city":"未注明","channel":"BOSS直聘","appliedAt":"2026-11-02","stage":"已投递","fit":"✅ 够得上","direction":"内容策划","greeting":"您好~我对这个岗很感兴趣。7年护肤、女性健康科普内容经验，做过150+篇原创科普和50+品牌商业化内容。期待回复~可以发您简历和作品集。","nextStep":"","nextAt":"","notes":"薪资 7-12K。","events":[],"history":[],"progressAt":"2026-11-02"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #09 莱嗯｜AI内容运营（已投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee09', u.id, 'app', '{"id":"app_lee09","company":"莱嗯","role":"AI内容运营","city":"未注明","channel":"BOSS直聘","appliedAt":"2026-11-02","stage":"已投递","fit":"⚠️ 可以冲","direction":"内容策划","greeting":"您好~我对这个岗很感兴趣。7年内容生产经验，做过150+篇原创科普，也独立搭建运营了一个150+天的AI陪伴Agent。期待回复~可以发您简历和作品集。","nextStep":"面试准备：至少 2 个 AIGC 成品 + 1 套完整生产过程材料","nextAt":"","notes":"薪资 6-10K·13薪。面试要交作品与过程证明。","events":[],"history":[],"progressAt":"2026-11-02"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #10 成都星源晨光文化传媒｜公号运营（医院公众号）（已投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee10', u.id, 'app', '{"id":"app_lee10","company":"成都星源晨光文化传媒","role":"公号运营（医院公众号）","city":"成都","channel":"BOSS直聘","appliedAt":"2026-11-02","stage":"已投递","fit":"✅ 够得上","direction":"内容策划","greeting":"您好~我对这个岗很感兴趣。7年公众号运营经验，做过150+篇健康科普，55%的文章阅读量破10万。期待回复~可以发您简历和作品集。","nextStep":"","nextAt":"","notes":"底薪 6-8K+提成，综合 10K+。","events":[],"history":[],"progressAt":"2026-11-02"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #11 沐羽堂｜新媒体文案策划（已投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee11', u.id, 'app', '{"id":"app_lee11","company":"沐羽堂","role":"新媒体文案策划","city":"未注明","channel":"BOSS直聘","appliedAt":"2026-11-02","stage":"已投递","fit":"✅ 够得上","direction":"内容策划","greeting":"您好~我对这个岗很感兴趣。7年女性健康、护肤内容经验，做过150+篇原创科普，也会用AI辅助内容制作。期待回复~可以发您简历和作品集。","nextStep":"","nextAt":"","notes":"薪资 8-12K·13薪。","events":[],"history":[],"progressAt":"2026-11-02"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #12 新潮传媒集团｜app产品经理（已投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee12', u.id, 'app', '{"id":"app_lee12","company":"新潮传媒集团","role":"app产品经理","city":"未注明","channel":"BOSS直聘","appliedAt":"2026-11-02","stage":"已投递","fit":"⚠️ 可以冲","direction":"AI 产品","greeting":"您好~我对这个岗很感兴趣。7年女性健康科普内容经验，做过150+篇原创科普，也独立搭建运营了一个150+天的AI陪伴Agent。期待回复~可以发您简历和作品集。","nextStep":"","nextAt":"","notes":"薪资 13-16K。","events":[],"history":[],"progressAt":"2026-11-02"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #13 汇兔进出口贸易｜文案编辑（已投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee13', u.id, 'app', '{"id":"app_lee13","company":"汇兔进出口贸易","role":"文案编辑","city":"未注明","channel":"其他","appliedAt":"2026-11-02","stage":"已投递","fit":"✅ 够得上","direction":"内容策划","greeting":"您好，谢谢您的打招呼。7年公众号、微博、小红书图文内容经验，做过150+篇原创科普和50+品牌商业化内容。期待进一步聊聊~可以发您简历和作品集。","nextStep":"","nextAt":"","notes":"薪资 6-9K。对方先打招呼。","events":[],"history":[],"progressAt":"2026-11-02"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #14 四川杏林医药｜初级产品经理（不考虑）
insert into public.items (id, user_id, kind, data)
select 'app_lee14', u.id, 'app', '{"id":"app_lee14","company":"四川杏林医药","role":"初级产品经理","city":"未注明","channel":"BOSS直聘","appliedAt":"","stage":"不考虑","fit":"⚠️ 可以冲","direction":"AI 产品","greeting":"您好~我对这个岗很感兴趣。7年女性健康、母婴方向内容经验，现为营养师，也做过10+场电商活动，对大健康食品的卖点和用户需求比较熟。期待回复~可以发您简历和作品集。","nextStep":"","nextAt":"","notes":"薪资 5-7K。Lee 决定不投：实物商品 PM 无相关经验，医药方向担心涉及应酬。","events":[],"history":[],"progressAt":"2026-11-05"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #15 未注明公司｜视频内容AI数据标注师（待投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee15', u.id, 'app', '{"id":"app_lee15","company":"未注明公司","role":"视频内容AI数据标注师","city":"未注明","channel":"BOSS直聘","appliedAt":"","stage":"待投递","fit":"❌ 先放放","direction":"AI 产品","greeting":"（备用）您好~我对这个岗很感兴趣。7年女性健康科普内容经验，做过150+篇原创科普，也做过Prompt对照测试和模型效果对比。期待回复~可以发您简历和作品集。","nextStep":"待 Lee 决定（Koda 建议先放放）","nextAt":"","notes":"综合 5-7K（基本 4500+绩效最高 1500+餐补 300+全勤 200）。纯执行标注；五险一金六个月后缴；年龄卡线。","events":[],"history":[],"progressAt":"2026-11-05"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #16 美尔贝｜新媒体运营专员（不考虑）
insert into public.items (id, user_id, kind, data)
select 'app_lee16', u.id, 'app', '{"id":"app_lee16","company":"美尔贝","role":"新媒体运营专员","city":"未注明","channel":"其他","appliedAt":"2026-11-02","stage":"不考虑","fit":"✅ 够得上","direction":"内容策划","greeting":"您好，谢谢您的打招呼。7年女性健康、护肤科普内容经验，做过150+篇原创科普，55%的文章阅读量破10万。期待进一步聊聊~可以发您简历和作品集。","nextStep":"","nextAt":"","notes":"薪资 6-11K。对方先打招呼；面试 2026-11-06 14:00 已取消（Lee 决定不去：意义不大、离家太远、太累）。待运营账号：小红书 成都胡琳|高定抗衰，52 粉，注射类抗衰内容，标题功效承诺较重。","events":[],"history":["已投递"],"progressAt":"2026-11-06"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #17 成都温度互动传媒科技｜文稿文章兼职写手（待投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee17', u.id, 'app', '{"id":"app_lee17","company":"成都温度互动传媒科技","role":"文稿文章兼职写手","city":"成都","channel":"BOSS直聘","appliedAt":"","stage":"待投递","fit":"⚠️ 可以冲","direction":"内容策划","greeting":"您好，我是Chaiee。7年健康科普内容经验，做过150+篇原创科普，也会数据分析和编程。想先问一下这个兼职是按篇结算吗，单篇大概什么价格？","nextStep":"先问单价：按篇结算？单篇多少钱？","nextAt":"2026-11-07","notes":"长期兼职，线上，月结；标称 5-8K/月，Lee 判断到不了。招聘截止 2026-11-07。","events":[],"history":[],"progressAt":"2026-11-05"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #18 流光融媒｜公众号运营（不考虑）
insert into public.items (id, user_id, kind, data)
select 'app_lee18', u.id, 'app', '{"id":"app_lee18","company":"流光融媒","role":"公众号运营","city":"未注明","channel":"BOSS直聘","appliedAt":"","stage":"不考虑","fit":"✅ 够得上","direction":"内容策划","greeting":"您好~我对这个岗很感兴趣。7年公众号运营经验，做过150+篇健康科普，55%的文章阅读量破10万，也会PS和数据分析。期待回复~可以发您简历和作品集。","nextStep":"","nextAt":"","notes":"薪资 7-12K。Lee 决定不投：私人医院，考核看留资到诊；这钱拿着昧良心。","events":[],"history":[],"progressAt":"2026-11-05"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #19 成都唱吧｜AI工具产品经理（待投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee19', u.id, 'app', '{"id":"app_lee19","company":"成都唱吧","role":"AI工具产品经理","city":"成都","channel":"BOSS直聘","appliedAt":"","stage":"待投递","fit":"⚠️ 可以冲","direction":"AI 产品","greeting":"您好~我对这个岗很感兴趣。过去半年独立搭建运营了一个150+天的AI陪伴Agent，也做了猫泌尿健康管理的AI工具ToLook，从需求到上线迭代都是自己负责。期待回复~可以发您简历和作品集。","nextStep":"投递（打招呼已备好）","nextAt":"","notes":"薪资 20-40K。短板：无 2 年正式 C 端 PM 经验、无订阅/付费转化经验、无 SQL。","events":[],"history":[],"progressAt":"2026-11-05"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #20 成都小咖帮智能科技｜AI Agent效果评测专家（笔试）
insert into public.items (id, user_id, kind, data)
select 'app_lee20', u.id, 'app', '{"id":"app_lee20","company":"成都小咖帮智能科技","role":"AI Agent效果评测专家","city":"成都","channel":"BOSS直聘","appliedAt":"2026-11-05","stage":"笔试","fit":"✅ 够得上","direction":"AI 评测","greeting":"您好~我对这个岗很感兴趣。过去半年独立搭建运营了一个150+天的AI陪伴Agent，做过Prompt对照测试和模型效果对比，也做了7年需要严守合规边界的健康科普内容。期待回复~可以发您简历和作品集。","nextStep":"等笔试反馈","nextAt":"","notes":"薪资 6-7K。笔试已做（2026-11-05 下午），第一次接触评测工作。","events":[],"history":["已投递"],"progressAt":"2026-11-05"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #21 罗克佳华｜AI提示词工程师（待投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee21', u.id, 'app', '{"id":"app_lee21","company":"罗克佳华","role":"AI提示词工程师","city":"未注明","channel":"BOSS直聘","appliedAt":"","stage":"待投递","fit":"✅ 够得上","direction":"AI 评测","greeting":"您好~我对这个岗很感兴趣。过去半年一直在给自己的AI陪伴Agent写提示词和做效果评测，也做过Prompt对照测试和模型效果对比。期待回复~可以发您简历和作品集。","nextStep":"投递（打招呼已备好）","nextAt":"","notes":"薪资 15-20K。短板：提示词经验约 6 个月（要求 1 年以上）、无 Python 自动化评测脚本。","events":[],"history":[],"progressAt":"2026-11-05"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #22 四川星铭运优科技｜AI打分（待投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee22', u.id, 'app', '{"id":"app_lee22","company":"四川星铭运优科技","role":"AI打分","city":"未注明","channel":"BOSS直聘","appliedAt":"","stage":"待投递","fit":"❌ 先放放","direction":"AI 评测","greeting":"（备用）您好~我对这个岗很感兴趣。7年内容经验，做过Prompt对照测试和模型效果对比，也独立搭建运营了一个150+天的AI陪伴Agent。期待回复~可以发您简历和作品集。","nextStep":"待 Lee 决定（Koda 建议先放放）","nextAt":"","notes":"薪资三处数字不一致，真实区间 4-8K。纯执行打分，无评测体系设计。","events":[],"history":[],"progressAt":"2026-11-05"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #23 百词斩｜AI产品经理（待投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee23', u.id, 'app', '{"id":"app_lee23","company":"百词斩","role":"AI产品经理","city":"未注明","channel":"BOSS直聘","appliedAt":"","stage":"待投递","fit":"⚠️ 可以冲","direction":"AI 产品","greeting":"您好，我对这个岗位很感兴趣。平时是多邻国等语言学习app的重度用户，常用claude、chatgpt、Muse、deepseek等模型。\n\n我近半年一直在做 AI 的「记忆」问题：独立搭建并运营一个长期陪伴 Agent，让它记得用户，记忆会随时间衰减、按使用频率重新浮现，换窗时自动交接上下文。这和背单词里''该在什么时候复习哪个词''是同一类问题。\n\n之前做了多年内容和科普，擅长把复杂知识讲成用户愿意学的样子。方便的话发您简历和作品集~（Lee 2026-11-05 改写版）","nextStep":"投递（Lee 改写版打招呼已备好）","nextAt":"","notes":"薪资 20-30K。钩子：Agent 记忆衰减 = 背单词复习时机。","events":[],"history":[],"progressAt":"2026-11-05"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #24 创宇后天｜长视频PE+视频评测岗（待投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee24', u.id, 'app', '{"id":"app_lee24","company":"创宇后天","role":"长视频PE+视频评测岗","city":"未注明","channel":"其他","appliedAt":"","stage":"待投递","fit":"⚠️ 可以冲","direction":"AI 评测","greeting":"（不写打招呼，面试前先问清问题）","nextStep":"先问清 9 个问题：PE 定义、工作占比、评测对象、薪资结构、身份、地点、面试实操","nextAt":"","notes":"薪资 7-8K。对方主动打招呼；待问清。","events":[],"history":[],"progressAt":"2026-11-05"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();

-- #25 莱嗯｜AI社媒专员（待投递）
insert into public.items (id, user_id, kind, data)
select 'app_lee25', u.id, 'app', '{"id":"app_lee25","company":"莱嗯","role":"AI社媒专员","city":"未注明","channel":"BOSS直聘","appliedAt":"","stage":"待投递","fit":"✅ 够得上","direction":"内容策划","greeting":"您好，我做了多年内容运营和科普，平时用Claude/chatGPT/Muse/deepseek比较多。现在的内容生产基本跑在 AI 上：用 Dify 搭过工作流；给不同模型写同一份 AI 资讯简报的 Prompt，对比输出后迭代；日常用 MCP 把记忆库、邮箱、论坛等工具接进 Agent，搭了一套多 Agent 协作的个人系统。英文资料能独立检索阅读，常用 X 跟海外 AI 动态。可附上 Prompt 和工作流案例～（Lee 2026-11-05 改写版）","nextStep":"投递（附至少 1 项 AI 成果；Lee 改写版打招呼已备好）","nextAt":"","notes":"薪资 6-9K·13薪。只接受线下面试，城市未确认；Lee 常用 X。","events":[],"history":[],"progressAt":"2026-11-05"}'::jsonb
from auth.users u where u.email = 'lizzylee1231@163.com'
on conflict (user_id, id) do update set data = excluded.data, updated_at = now();
