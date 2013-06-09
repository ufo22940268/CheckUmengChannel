.class public final Lcom/zhangdan/app/sms/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;

.field public static i:Lcom/zhangdan/app/sms/c;

.field static j:Ljava/util/HashMap;

.field private static final k:Ljava/util/regex/Pattern;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final m:Ljava/util/regex/Pattern;

.field private static p:[Ljava/util/regex/Pattern;

.field private static q:[Ljava/util/regex/Pattern;

.field private static r:[Ljava/util/regex/Pattern;


# instance fields
.field private n:Landroid/content/Context;

.field private o:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "((\uffe5|RMB|\u4eba\u6c11\u5e01|\u4eba\u6c11\u5e01\u5143|\u8d26\u5355\u91d1\u989d)(((\\d{1,3},\\d{3},\\d{3})|(\\d{1,3},\\d{3})|([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,})?))|((((\\d{1,3},\\d{3},\\d{3})|(\\d{1,3},\\d{3})|([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,})?)(\u5143|\u4eba\u6c11\u5e01|\u83f2\u5f8b\u5bbe\u6bd4\u7d22|\u5370\u5c3c\u5362\u6bd4))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/b;->a:Ljava/util/regex/Pattern;

    const-string v0, "((\u7f8e\u91d1|\u7f8e\u5143|USD)(((\\d{1,3},\\d{3},\\d{3})|(\\d{1,3},\\d{3})|([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,})?))|((((\\d{1,3},\\d{3},\\d{3})|(\\d{1,3},\\d{3})|([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,})?)(\u7f8e\u5143|\u7f8e\u91d1))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/b;->b:Ljava/util/regex/Pattern;

    const-string v0, "(((\\d{1,2})\u6708((\\d{1,2})\u65e5)?)|\u672c\u671f|\u4e0a\u671f)\u8d26\u5355"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/b;->k:Ljava/util/regex/Pattern;

    const-string v0, "(\u8fd8\u6b3e\u65e5|\u5230\u671f\u8fd8\u6b3e|\u8bf7\u4e8e|\u8fd8\u6b3e\u5230\u671f).{0,5}(\\d{1,2})\u6708(\\d{1,2})(\u65e5|\u53f7)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/b;->l:Ljava/util/regex/Pattern;

    const-string v0, "(\u5e94\u8fd8|\u6708\u7ed3\u91d1\u989d).*(\u8fd8\u6b3e\u65e5|\u524d\u8fd8\u6b3e|\u5e94\u8fd8\u6b3e|\u5230\u671f\u8fd8\u6b3e|\u5e94\u8fd8\u6b3e\u989d)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/b;->m:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2})\u6708(\\d{1,2})(\u65e5|\u53f7)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/b;->c:Ljava/util/regex/Pattern;

    const-string v0, "\\d{3,}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/b;->d:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2})(\u65e5|\u53f7)(\\d{1,2})(\u65f6|:|\uff1a)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/b;->e:Ljava/util/regex/Pattern;

    const-string v0, "((\\d{1,3},\\d{3},\\d{3})|(\\d{1,3},\\d{3})|([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,})?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/b;->f:Ljava/util/regex/Pattern;

    const-string v0, "\\d(\\d|,)*\\.\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/b;->g:Ljava/util/regex/Pattern;

    const-string v0, "-{0,1}\\d(\\d|,)*\\.\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/b;->h:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/zhangdan/app/sms/c;

    invoke-direct {v0}, Lcom/zhangdan/app/sms/c;-><init>()V

    sput-object v0, Lcom/zhangdan/app/sms/b;->i:Lcom/zhangdan/app/sms/c;

    const-string v1, "(\u652f\u51fa|(\u4ea4\u6613(?!\u540e\u4f59\u989d|\u65f6\u95f4|\u5bc6\u7801|\u901a\u77e5|\u64a4\u9500))|(\u6d88\u8d39(?!\u64a4\u9500))|(\u652f\u4ed8(?!\u5b58\u5165))|\u8f6c\u51fa|\u5b9e\u8fd8|\u53d6\u6b3e|\u6263\u6b3e|\u53d1\u751f|\u73b0\u652f|\u8f6c\u652f|\u8f6c\u53d6|(\u8f6c\u8d26(?!\u8fd8\u6b3e\u5165\u8d26))|\u53d6\u73b0|\u652f\u53d6|\u4e2a\u8d37\u8fd8\u6b3e|\u4ee3\u6263|\u793e\u4fdd\u6263|\u9884\u4ed8|\u73b0\u53d6|\u63d0\u73b0|\u7535\u8d39|\u51cf\u5c11\u4e86|\u5212\u51fa|\u6263\u8d39\u989d|\u624b\u7eed\u8d39|\u6263\u5e74\u8d39|\u6536\u8d39|\u5883\u5916\u6388\u6743|\u9884\u6388\u6743|\u7f51\u4e0a\u8d2d\u7269|\u53d6\u51fa|\u652f\u85aa|\u4ee3\u4ed8).*(\u5143|\uffe5|\u4eba\u6c11\u5e01|RMB|\u7f8e\u5143|\u7f8e\u91d1|\u6e2f\u5e01|\u6e2f\u5143|HKD|USD|\u6e2f\u5e01|\u5362\u6bd4|\u65e5\u5143|\u83f2\u5f8b\u5bbe\u6bd4\u7d22|\u5370\u5c3c\u5362\u6bd4|)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/app/sms/c;->b:Ljava/util/regex/Pattern;

    sget-object v0, Lcom/zhangdan/app/sms/b;->i:Lcom/zhangdan/app/sms/c;

    const-string v1, "(\u5de5\u8d44|\u5b58\u5165|\u5956\u91d1|\u6536\u5230|\u8f6c\u5165|\u6536\u5165|\u62a5\u9500|\u6d25\u8d34|\u6c47\u5165|\u5b58\u6b3e|\u8fd8\u6b3e|\u53d1\u5176\u5b83|\u8f6c\u5b58|\u5b58\u73b0|\u73b0\u5b58|\u4ee3\u53d1|\u53d1\u4f4f\u623f\u516c\u79ef\u91d1|\u5230\u5e10|\u5708\u5b58|\u7ed3\u606f|\u507f\u8fd8).*(\u5143|\uffe5|\u4eba\u6c11\u5e01|RMB|\u7f8e\u5143|\u7f8e\u91d1|\u6e2f\u5e01|\u6e2f\u5143|HKD|USD|)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/app/sms/c;->a:Ljava/util/regex/Pattern;

    sget-object v0, Lcom/zhangdan/app/sms/b;->i:Lcom/zhangdan/app/sms/c;

    const-string v1, "(\u8d35\u5361|\u60a8\u7684|\u5c3e\u53f7|\u5361\u53f7|\u5c3e\u6570|\u672b\u56db\u4f4d|\u540e4\u4f4d|\u672b5\u4f4d|\u5e10\u6237|\u5361\u672b|\u5361\uff08|\u5361\\(|\u5c3e\u53f7\u662f|[\u4e00-\u9fa5]{2,5}\u5361)(\uff1a)?(\u4e3a)?(\\*){0,3}\\d{3,}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/app/sms/c;->c:Ljava/util/regex/Pattern;

    sget-object v0, Lcom/zhangdan/app/sms/b;->i:Lcom/zhangdan/app/sms/c;

    const-string v1, "((\uffe5|RMB|\u4eba\u6c11\u5e01|\u4eba\u6c11\u5e01\u5143|\u7f8e\u5143|\u7f8e\u91d1|\u6d88\u8d39|\u6e2f\u5e01|\u6e2f\u5143|HKD|USD)(((\\d{1,3},\\d{3},\\d{3})|(\\d{1,3},\\d{3})|([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,})?))|((((\\d{1,3},\\d{3},\\d{3})|(\\d{1,3},\\d{3})|([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,})?)(\u5143| \u5143|\u4eba\u6c11\u5e01|\u7f8e\u5143|\u7f8e\u91d1|\u6e2f\u5e01|\u6e2f\u5143|HKD|USD|\u6e2f\u5e01|))"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/app/sms/c;->d:Ljava/util/regex/Pattern;

    new-array v0, v4, [Ljava/util/regex/Pattern;

    const-string v1, "(\u5e94\u8fd8\u6b3e).*(\u5143|\uffe5|\u4eba\u6c11\u5e01|RMB|\u7f8e\u5143|\u7f8e\u91d1|\u6e2f\u5e01|\u6e2f\u5143|HKD|USD)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/zhangdan/app/sms/b;->k:Ljava/util/regex/Pattern;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zhangdan/app/sms/b;->p:[Ljava/util/regex/Pattern;

    new-array v0, v4, [Ljava/util/regex/Pattern;

    const-string v1, "(\u5e94\u8fd8).*(\u5143|\uffe5|\u4eba\u6c11\u5e01|RMB|\u7f8e\u5143|\u7f8e\u91d1|\u6e2f\u5e01|\u6e2f\u5143|HKD|USD)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/zhangdan/app/sms/b;->k:Ljava/util/regex/Pattern;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zhangdan/app/sms/b;->q:[Ljava/util/regex/Pattern;

    new-array v0, v4, [Ljava/util/regex/Pattern;

    const-string v1, "(\u5e94\u8fd8).*(\u5143|\uffe5|\u4eba\u6c11\u5e01|RMB|\u7f8e\u5143|\u7f8e\u91d1|\u6e2f\u5e01|\u6e2f\u5143|HKD|USD)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/zhangdan/app/sms/b;->k:Ljava/util/regex/Pattern;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zhangdan/app/sms/b;->r:[Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zhangdan/app/sms/b;->j:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/zhangdan/app/sms/b;->p:[Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zhangdan/app/sms/b;->j:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/zhangdan/app/sms/b;->q:[Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zhangdan/app/sms/b;->j:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/zhangdan/app/sms/b;->r:[Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/sms/b;->o:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/zhangdan/app/sms/b;->n:Landroid/content/Context;

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/zhangdan/app/sms/b;->a(Ljava/lang/String;)Lcom/zhangdan/app/sms/c;

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/zhangdan/app/sms/a;
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Lcom/zhangdan/app/sms/a;

    invoke-direct {v1}, Lcom/zhangdan/app/sms/a;-><init>()V

    invoke-virtual {v1, p0}, Lcom/zhangdan/app/sms/a;->e(I)V

    invoke-virtual {v1, p1}, Lcom/zhangdan/app/sms/a;->d(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/sms/a;->a(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/sms/a;->d(I)V

    invoke-static {p2}, Lcom/zhangdan/app/sms/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/sms/a;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/zhangdan/app/sms/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/sms/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p3}, Lcom/zhangdan/app/sms/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/zhangdan/app/sms/a;->f(Ljava/lang/String;)V

    :goto_0
    const-string v0, "\u5df2\u751f\u6210"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xd

    if-ne p0, v0, :cond_4

    const-string v0, "\u5df2\u751f\u6210"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/zhangdan/app/sms/b;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/sms/a;->g(I)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/sms/a;->f(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {v1, p4, p5}, Lcom/zhangdan/app/sms/a;->b(J)V

    invoke-virtual {v1, p3}, Lcom/zhangdan/app/sms/a;->g(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->r()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->s()I

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/sms/a;->d(I)V

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_3
    invoke-static {p3}, Lcom/zhangdan/app/sms/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/sms/a;->f(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/zhangdan/app/sms/b;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/sms/a;->g(I)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/sms/a;->f(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->n()V

    sget-object v0, Lcom/zhangdan/app/h/g;->b:Ljava/text/SimpleDateFormat;

    invoke-static {p4, p5, v0}, Lcom/zhangdan/app/h/g;->a(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/sms/a;->h(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Lcom/zhangdan/app/sms/j;)Lcom/zhangdan/app/sms/a;
    .locals 13

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v0, p1, Lcom/zhangdan/app/sms/j;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/zhangdan/app/sms/j;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-static {}, Lcom/umeng/common/a;->c()V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, v0}, Lcom/zhangdan/app/sms/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_2f

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "bank_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "bank_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/zhangdan/app/sms/a;

    invoke-direct {v4}, Lcom/zhangdan/app/sms/a;-><init>()V

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->e(I)V

    invoke-virtual {v4, v1}, Lcom/zhangdan/app/sms/a;->d(Ljava/lang/String;)V

    const-string v2, "\u8d37\u6b3e"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\u8d26\u6237"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\u6d3b\u671f"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\u5e10\u6237"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\u5e10\u53f7"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\u8d26\u53f7"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\u8f6c\u8d26"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\u8f6c\u5e10"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const-string v2, "\u4fe1\u7528\u5361"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Lcom/zhangdan/app/sms/a;->d(I)V

    invoke-virtual {v4, v3}, Lcom/zhangdan/app/sms/a;->g(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/zhangdan/app/sms/a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v5

    :goto_1
    if-nez v2, :cond_5

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v4

    goto/16 :goto_0

    :cond_4
    move v2, v6

    goto :goto_1

    :cond_5
    :try_start_1
    sget-object v10, Lcom/zhangdan/app/sms/b;->i:Lcom/zhangdan/app/sms/c;

    iget-object v2, v10, Lcom/zhangdan/app/sms/c;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    const-string v2, ""

    if-eqz v11, :cond_6

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v8

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v11, :cond_6

    invoke-virtual {v3, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v11, "\u5e74"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v2, ""

    :cond_6
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/zhangdan/app/sms/a;->a(I)V

    const-string v8, "\u4fdd\u5355"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "\u5931\u8d25"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "\u9000\u8d27"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "\u6fc0\u6d3b"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "\u5269\u4f59\u989d\u5ea6"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "\u79ef\u5206"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "\u4f18\u60e0"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    const-string v8, "\u4e86\u89e3"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "\u6b20\u6b3e"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "\u5f53\u524d\u4f59\u989d"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_8
    const-string v8, "\u6d88\u8d39"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "\u652f\u51fa"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "\u8fd8\u6b3e"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Lcom/zhangdan/app/sms/a;->d(I)V

    invoke-virtual {v4, v3}, Lcom/zhangdan/app/sms/a;->g(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v8, v6

    :goto_2
    if-eqz v8, :cond_b

    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object v0, v4

    goto/16 :goto_0

    :cond_a
    move v8, v5

    goto :goto_2

    :cond_b
    :try_start_2
    iget-object v8, v10, Lcom/zhangdan/app/sms/c;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_1d

    new-instance v4, Lcom/zhangdan/app/sms/a;

    invoke-direct {v4}, Lcom/zhangdan/app/sms/a;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/sms/a;->a(I)V

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->e(I)V

    invoke-virtual {v4, v1}, Lcom/zhangdan/app/sms/a;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->d(I)V

    invoke-static {v2}, Lcom/zhangdan/app/sms/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->e(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/zhangdan/app/sms/a;->g(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6ee1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "\u4f18\u60e0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "\u5237"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "\u7279\u60e0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "\u8fd8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_c
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_e

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zhangdan/app/sms/b;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->d(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_d

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_d
    move-object v0, v4

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x4

    :try_start_3
    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->d(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_f

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_f
    move-object v0, v4

    goto/16 :goto_0

    :cond_10
    :try_start_4
    const-string v1, "\u989d\u5ea6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_12

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zhangdan/app/sms/b;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->d(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_11

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_11
    move-object v0, v4

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x3

    :try_start_5
    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->d(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v9, :cond_13

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_13
    move-object v0, v4

    goto/16 :goto_0

    :cond_14
    :try_start_6
    sget-object v0, Lcom/zhangdan/app/sms/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/sms/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {v3}, Lcom/zhangdan/app/sms/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_15
    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->f(Ljava/lang/String;)V

    :goto_3
    sget-object v0, Lcom/zhangdan/app/sms/b;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/sms/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {v3}, Lcom/zhangdan/app/sms/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_16
    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->b(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {v4}, Lcom/zhangdan/app/sms/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v4}, Lcom/zhangdan/app/sms/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->d(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v9, :cond_18

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_18
    move-object v0, v4

    goto/16 :goto_0

    :cond_19
    :try_start_7
    invoke-static {v3}, Lcom/zhangdan/app/sms/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->f(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_1a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1a
    throw v0

    :cond_1b
    :try_start_8
    invoke-virtual {v4}, Lcom/zhangdan/app/sms/a;->n()V

    iget-wide v0, p1, Lcom/zhangdan/app/sms/j;->c:J

    invoke-virtual {v4, v0, v1}, Lcom/zhangdan/app/sms/a;->b(J)V

    iget-wide v0, p1, Lcom/zhangdan/app/sms/j;->c:J

    sget-object v2, Lcom/zhangdan/app/h/g;->b:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/h/g;->a(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->h(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/zhangdan/app/sms/a;->g(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v9, :cond_1c

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1c
    move-object v0, v4

    goto/16 :goto_0

    :cond_1d
    :try_start_9
    const-string v8, "\u8fd4\u8fd8"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    const-string v8, "\u4fc3\u9500"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    const-string v8, "\u7279\u60e0"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    const-string v8, "\u5927\u793c"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    const-string v8, "\u793c\u7269"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    const-string v8, "\u5151\u6362"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    const-string v8, "\u4f18\u60e0"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    const-string v8, "\u5355\u7b14\u6ee1"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    const-string v8, "\u6d88\u8d39\u91d1\u989d\u6ee1"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    const-string v8, "\u6d88\u8d39\u6ee1"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    const-string v8, "\u793c\u9047"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    const-string v8, "\u514d\u624b\u7eed\u8d39"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    const-string v8, "\u514d\u606f"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    const-string v8, "\u7535\u5f71"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    const-string v8, "\u83b7\u8d60"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    const-string v8, "\u6298"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_20

    :cond_1e
    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Lcom/zhangdan/app/sms/a;->d(I)V

    invoke-virtual {v4, v3}, Lcom/zhangdan/app/sms/a;->g(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move v8, v6

    :goto_4
    if-eqz v8, :cond_21

    if-eqz v9, :cond_1f

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1f
    move-object v0, v4

    goto/16 :goto_0

    :cond_20
    move v8, v5

    goto :goto_4

    :cond_21
    :try_start_a
    sget-object v4, Lcom/zhangdan/app/sms/b;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_22

    sget-object v4, Lcom/zhangdan/app/sms/b;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    :cond_22
    if-nez v4, :cond_23

    sget-object v4, Lcom/zhangdan/app/sms/b;->j:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/util/regex/Pattern;

    if-nez v4, :cond_24

    move v4, v5

    :cond_23
    :goto_5
    if-eqz v4, :cond_27

    iget-wide v4, p1, Lcom/zhangdan/app/sms/j;->c:J

    invoke-static/range {v0 .. v5}, Lcom/zhangdan/app/sms/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/zhangdan/app/sms/a;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_24
    :try_start_b
    array-length v11, v4

    move v8, v5

    :goto_6
    if-lt v8, v11, :cond_25

    move v4, v5

    goto :goto_5

    :cond_25
    aget-object v12, v4, v8

    invoke-virtual {v12, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_26

    move v4, v6

    goto :goto_5

    :cond_26
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_27
    iget-object v4, v10, Lcom/zhangdan/app/sms/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2d

    new-instance v4, Lcom/zhangdan/app/sms/a;

    invoke-direct {v4}, Lcom/zhangdan/app/sms/a;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/zhangdan/app/sms/a;->a(I)V

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->e(I)V

    invoke-virtual {v4, v1}, Lcom/zhangdan/app/sms/a;->d(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->d(I)V

    invoke-static {v2}, Lcom/zhangdan/app/sms/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->e(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/zhangdan/app/sms/a;->g(Ljava/lang/String;)V

    sget-object v0, Lcom/zhangdan/app/sms/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/sms/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static {v3}, Lcom/zhangdan/app/sms/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_28
    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->f(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v4}, Lcom/zhangdan/app/sms/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v4}, Lcom/zhangdan/app/sms/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->d(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v9, :cond_29

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_29
    move-object v0, v4

    goto/16 :goto_0

    :cond_2a
    :try_start_c
    invoke-static {v3}, Lcom/zhangdan/app/sms/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->f(Ljava/lang/String;)V

    goto :goto_7

    :cond_2b
    invoke-virtual {v4}, Lcom/zhangdan/app/sms/a;->n()V

    iget-wide v0, p1, Lcom/zhangdan/app/sms/j;->c:J

    invoke-virtual {v4, v0, v1}, Lcom/zhangdan/app/sms/a;->b(J)V

    iget-wide v0, p1, Lcom/zhangdan/app/sms/j;->c:J

    sget-object v2, Lcom/zhangdan/app/h/g;->b:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/h/g;->a(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->h(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v9, :cond_2c

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2c
    move-object v0, v4

    goto/16 :goto_0

    :cond_2d
    :try_start_d
    sget-object v4, Lcom/zhangdan/app/sms/b;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-wide v4, p1, Lcom/zhangdan/app/sms/j;->c:J

    invoke-static/range {v0 .. v5}, Lcom/zhangdan/app/sms/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/zhangdan/app/sms/a;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_2e
    packed-switch v0, :pswitch_data_0

    :cond_2f
    if-eqz v9, :cond_30

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_30
    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_0
    :try_start_e
    sget-object v4, Lcom/zhangdan/app/sms/b;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2f

    new-instance v4, Lcom/zhangdan/app/sms/a;

    invoke-direct {v4}, Lcom/zhangdan/app/sms/a;-><init>()V

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->e(I)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->a(I)V

    invoke-virtual {v4, v1}, Lcom/zhangdan/app/sms/a;->d(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/zhangdan/app/sms/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->e(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    :goto_8
    invoke-virtual {v4, v6}, Lcom/zhangdan/app/sms/a;->d(I)V

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->f(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/zhangdan/app/sms/a;->n()V

    iget-wide v0, p1, Lcom/zhangdan/app/sms/j;->c:J

    invoke-virtual {v4, v0, v1}, Lcom/zhangdan/app/sms/a;->b(J)V

    iget-wide v0, p1, Lcom/zhangdan/app/sms/j;->c:J

    sget-object v2, Lcom/zhangdan/app/h/g;->b:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/h/g;->a(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/sms/a;->h(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/zhangdan/app/sms/a;->g(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v9, :cond_31

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_31
    move-object v0, v4

    goto/16 :goto_0

    :cond_32
    move v6, v7

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Lcom/zhangdan/app/sms/c;
    .locals 7

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "a"

    move-object v6, v0

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/sms/b;->o:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/c;

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/sms/b;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zhangdan/app/sms/e;->a:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bank_phone = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' or bank_id = 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "income_regex"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "expend_regex"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "card_regex"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "amount_regex"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/zhangdan/app/sms/c;

    invoke-direct {v0}, Lcom/zhangdan/app/sms/c;-><init>()V

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, v0, Lcom/zhangdan/app/sms/c;->a:Ljava/util/regex/Pattern;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, v0, Lcom/zhangdan/app/sms/c;->b:Ljava/util/regex/Pattern;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, v0, Lcom/zhangdan/app/sms/c;->c:Ljava/util/regex/Pattern;

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, v0, Lcom/zhangdan/app/sms/c;->d:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/zhangdan/app/sms/b;->o:Ljava/util/HashMap;

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/zhangdan/app/sms/b;->o:Ljava/util/HashMap;

    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/c;

    iget-object v2, p0, Lcom/zhangdan/app/sms/b;->o:Ljava/util/HashMap;

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move-object v6, p1

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/zhangdan/app/sms/b;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/zhangdan/app/sms/b;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/zhangdan/app/sms/b;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
