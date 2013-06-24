.class public Lcom/zhangdan/app/sms/BillMgr;
.super Ljava/lang/Object;
.source "BillMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/sms/BillMgr$BillRegex;
    }
.end annotation


# static fields
.field public static final AmountPattern:Ljava/util/regex/Pattern; = null

.field public static final AmountPattern2:Ljava/util/regex/Pattern; = null

.field public static final AmountPatternNonhang:Ljava/util/regex/Pattern; = null

.field private static final BillPattern:Ljava/util/regex/Pattern; = null

.field private static BillPatternGongHang:[Ljava/util/regex/Pattern; = null

.field static BillPatternMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static BillPatternNongHang:[Ljava/util/regex/Pattern; = null

.field private static BillPatternYouChu:[Ljava/util/regex/Pattern; = null

.field private static final BillRegex:Ljava/lang/String; = "(((\\d{1,2})\u6708((\\d{1,2})\u65e5)?)|\u672c\u671f|\u4e0a\u671f)\u8d26\u5355"

.field public static final CardNoPattern:Ljava/util/regex/Pattern; = null

.field public static DEFAULT_REGEX:Lcom/zhangdan/app/sms/BillMgr$BillRegex; = null

.field public static final DataPattern1:Ljava/util/regex/Pattern; = null

.field public static final DatePattern:Ljava/util/regex/Pattern; = null

.field public static final MoneyOfRmbPattern:Ljava/util/regex/Pattern; = null

.field private static final MoneyOfRmbRegex:Ljava/lang/String; = "((\uffe5|RMB|\u4eba\u6c11\u5e01|\u4eba\u6c11\u5e01\u5143|\u8d26\u5355\u91d1\u989d)(((\\d{1,3},\\d{3},\\d{3})|(\\d{1,3},\\d{3})|([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,})?))|((((\\d{1,3},\\d{3},\\d{3})|(\\d{1,3},\\d{3})|([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,})?)(\u5143|\u4eba\u6c11\u5e01|\u83f2\u5f8b\u5bbe\u6bd4\u7d22|\u5370\u5c3c\u5362\u6bd4))"

.field public static final MoneyOfUsdPattern:Ljava/util/regex/Pattern; = null

.field private static final MoneyOfUsdRegex:Ljava/lang/String; = "((\u7f8e\u91d1|\u7f8e\u5143|USD)(((\\d{1,3},\\d{3},\\d{3})|(\\d{1,3},\\d{3})|([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,})?))|((((\\d{1,3},\\d{3},\\d{3})|(\\d{1,3},\\d{3})|([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,})?)(\u7f8e\u5143|\u7f8e\u91d1))"

.field private static final RepaymentPattern:Ljava/util/regex/Pattern; = null

.field private static final RepaymentPattern2:Ljava/util/regex/Pattern; = null

.field private static final RepaymentRegex:Ljava/lang/String; = "(\u8fd8\u6b3e\u65e5|\u5230\u671f\u8fd8\u6b3e|\u8bf7\u4e8e|\u8fd8\u6b3e\u5230\u671f).{0,5}(\\d{1,2})\u6708(\\d{1,2})(\u65e5|\u53f7)"

.field private static final RepaymentRegex2:Ljava/lang/String; = "(\u5e94\u8fd8|\u6708\u7ed3\u91d1\u989d).*(\u8fd8\u6b3e\u65e5|\u524d\u8fd8\u6b3e|\u5e94\u8fd8\u6b3e|\u5230\u671f\u8fd8\u6b3e|\u5e94\u8fd8\u6b3e\u989d)"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/zhangdan/app/sms/BillMgr$BillRegex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    const-string v0, "((\uffe5|RMB|\u4eba\u6c11\u5e01|\u4eba\u6c11\u5e01\u5143|\u8d26\u5355\u91d1\u989d)(((\\d{1,3},\\d{3},\\d{3})|(\\d{1,3},\\d{3})|([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,})?))|((((\\d{1,3},\\d{3},\\d{3})|(\\d{1,3},\\d{3})|([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,})?)(\u5143|\u4eba\u6c11\u5e01|\u83f2\u5f8b\u5bbe\u6bd4\u7d22|\u5370\u5c3c\u5362\u6bd4))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/BillMgr;->MoneyOfRmbPattern:Ljava/util/regex/Pattern;

    .line 33
    const-string v0, "((\u7f8e\u91d1|\u7f8e\u5143|USD)(((\\d{1,3},\\d{3},\\d{3})|(\\d{1,3},\\d{3})|([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,})?))|((((\\d{1,3},\\d{3},\\d{3})|(\\d{1,3},\\d{3})|([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,})?)(\u7f8e\u5143|\u7f8e\u91d1))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/BillMgr;->MoneyOfUsdPattern:Ljava/util/regex/Pattern;

    .line 34
    const-string v0, "(((\\d{1,2})\u6708((\\d{1,2})\u65e5)?)|\u672c\u671f|\u4e0a\u671f)\u8d26\u5355"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/BillMgr;->BillPattern:Ljava/util/regex/Pattern;

    .line 35
    const-string v0, "(\u8fd8\u6b3e\u65e5|\u5230\u671f\u8fd8\u6b3e|\u8bf7\u4e8e|\u8fd8\u6b3e\u5230\u671f).{0,5}(\\d{1,2})\u6708(\\d{1,2})(\u65e5|\u53f7)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/BillMgr;->RepaymentPattern:Ljava/util/regex/Pattern;

    .line 36
    const-string v0, "(\u5e94\u8fd8|\u6708\u7ed3\u91d1\u989d).*(\u8fd8\u6b3e\u65e5|\u524d\u8fd8\u6b3e|\u5e94\u8fd8\u6b3e|\u5230\u671f\u8fd8\u6b3e|\u5e94\u8fd8\u6b3e\u989d)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/BillMgr;->RepaymentPattern2:Ljava/util/regex/Pattern;

    .line 38
    const-string v0, "(\\d{1,2})\u6708(\\d{1,2})(\u65e5|\u53f7)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/BillMgr;->DatePattern:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "\\d{3,}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/BillMgr;->CardNoPattern:Ljava/util/regex/Pattern;

    .line 40
    const-string v0, "(\\d{1,2})(\u65e5|\u53f7)(\\d{1,2})(\u65f6|:|\uff1a)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/BillMgr;->DataPattern1:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, "((\\d{1,3},\\d{3},\\d{3})|(\\d{1,3},\\d{3})|([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,})?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/BillMgr;->AmountPattern:Ljava/util/regex/Pattern;

    .line 47
    const-string v0, "\\d(\\d|,)*\\.\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/BillMgr;->AmountPattern2:Ljava/util/regex/Pattern;

    .line 49
    const-string v0, "-{0,1}\\d(\\d|,)*\\.\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/sms/BillMgr;->AmountPatternNonhang:Ljava/util/regex/Pattern;

    .line 58
    new-instance v0, Lcom/zhangdan/app/sms/BillMgr$BillRegex;

    invoke-direct {v0}, Lcom/zhangdan/app/sms/BillMgr$BillRegex;-><init>()V

    sput-object v0, Lcom/zhangdan/app/sms/BillMgr;->DEFAULT_REGEX:Lcom/zhangdan/app/sms/BillMgr$BillRegex;

    .line 61
    sget-object v0, Lcom/zhangdan/app/sms/BillMgr;->DEFAULT_REGEX:Lcom/zhangdan/app/sms/BillMgr$BillRegex;

    const-string v1, "(\u652f\u51fa|(\u4ea4\u6613(?!\u540e\u4f59\u989d|\u65f6\u95f4|\u5bc6\u7801|\u901a\u77e5|\u64a4\u9500))|(\u6d88\u8d39(?!\u64a4\u9500))|(\u652f\u4ed8(?!\u5b58\u5165))|\u8f6c\u51fa|\u5b9e\u8fd8|\u53d6\u6b3e|\u6263\u6b3e|\u53d1\u751f|\u73b0\u652f|\u8f6c\u652f|\u8f6c\u53d6|(\u8f6c\u8d26(?!\u8fd8\u6b3e\u5165\u8d26))|\u53d6\u73b0|\u652f\u53d6|\u4e2a\u8d37\u8fd8\u6b3e|\u4ee3\u6263|\u793e\u4fdd\u6263|\u9884\u4ed8|\u73b0\u53d6|\u63d0\u73b0|\u7535\u8d39|\u51cf\u5c11\u4e86|\u5212\u51fa|\u6263\u8d39\u989d|\u624b\u7eed\u8d39|\u6263\u5e74\u8d39|\u6536\u8d39|\u5883\u5916\u6388\u6743|\u9884\u6388\u6743|\u7f51\u4e0a\u8d2d\u7269|\u53d6\u51fa|\u652f\u85aa|\u4ee3\u4ed8).*(\u5143|\uffe5|\u4eba\u6c11\u5e01|RMB|\u7f8e\u5143|\u7f8e\u91d1|\u6e2f\u5e01|\u6e2f\u5143|HKD|USD|\u6e2f\u5e01|\u5362\u6bd4|\u65e5\u5143|\u83f2\u5f8b\u5bbe\u6bd4\u7d22|\u5370\u5c3c\u5362\u6bd4|)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/app/sms/BillMgr$BillRegex;->expendPattern:Ljava/util/regex/Pattern;

    .line 62
    sget-object v0, Lcom/zhangdan/app/sms/BillMgr;->DEFAULT_REGEX:Lcom/zhangdan/app/sms/BillMgr$BillRegex;

    const-string v1, "(\u5de5\u8d44|\u5b58\u5165|\u5956\u91d1|\u6536\u5230|\u8f6c\u5165|\u6536\u5165|\u62a5\u9500|\u6d25\u8d34|\u6c47\u5165|\u5b58\u6b3e|\u8fd8\u6b3e|\u53d1\u5176\u5b83|\u8f6c\u5b58|\u5b58\u73b0|\u73b0\u5b58|\u4ee3\u53d1|\u53d1\u4f4f\u623f\u516c\u79ef\u91d1|\u5230\u5e10|\u5708\u5b58|\u7ed3\u606f|\u507f\u8fd8).*(\u5143|\uffe5|\u4eba\u6c11\u5e01|RMB|\u7f8e\u5143|\u7f8e\u91d1|\u6e2f\u5e01|\u6e2f\u5143|HKD|USD|)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/app/sms/BillMgr$BillRegex;->incomePattern:Ljava/util/regex/Pattern;

    .line 63
    sget-object v0, Lcom/zhangdan/app/sms/BillMgr;->DEFAULT_REGEX:Lcom/zhangdan/app/sms/BillMgr$BillRegex;

    const-string v1, "(\u8d35\u5361|\u60a8\u7684|\u5c3e\u53f7|\u5361\u53f7|\u5c3e\u6570|\u672b\u56db\u4f4d|\u540e4\u4f4d|\u672b5\u4f4d|\u5e10\u6237|\u5361\u672b|\u5361\uff08|\u5361\\(|\u5c3e\u53f7\u662f|[\u4e00-\u9fa5]{2,5}\u5361)(\uff1a)?(\u4e3a)?(\\*){0,3}\\d{3,}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/app/sms/BillMgr$BillRegex;->cardPattern:Ljava/util/regex/Pattern;

    .line 64
    sget-object v0, Lcom/zhangdan/app/sms/BillMgr;->DEFAULT_REGEX:Lcom/zhangdan/app/sms/BillMgr$BillRegex;

    const-string v1, "((\uffe5|RMB|\u4eba\u6c11\u5e01|\u4eba\u6c11\u5e01\u5143|\u7f8e\u5143|\u7f8e\u91d1|\u6d88\u8d39|\u6e2f\u5e01|\u6e2f\u5143|HKD|USD)(((\\d{1,3},\\d{3},\\d{3})|(\\d{1,3},\\d{3})|([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,})?))|((((\\d{1,3},\\d{3},\\d{3})|(\\d{1,3},\\d{3})|([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,})?)(\u5143| \u5143|\u4eba\u6c11\u5e01|\u7f8e\u5143|\u7f8e\u91d1|\u6e2f\u5e01|\u6e2f\u5143|HKD|USD|\u6e2f\u5e01|))"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/app/sms/BillMgr$BillRegex;->amountPattern:Ljava/util/regex/Pattern;

    .line 76
    new-array v0, v4, [Ljava/util/regex/Pattern;

    const-string v1, "(\u5e94\u8fd8\u6b3e).*(\u5143|\uffe5|\u4eba\u6c11\u5e01|RMB|\u7f8e\u5143|\u7f8e\u91d1|\u6e2f\u5e01|\u6e2f\u5143|HKD|USD)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/zhangdan/app/sms/BillMgr;->BillPattern:Ljava/util/regex/Pattern;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zhangdan/app/sms/BillMgr;->BillPatternGongHang:[Ljava/util/regex/Pattern;

    .line 81
    new-array v0, v4, [Ljava/util/regex/Pattern;

    const-string v1, "(\u5e94\u8fd8).*(\u5143|\uffe5|\u4eba\u6c11\u5e01|RMB|\u7f8e\u5143|\u7f8e\u91d1|\u6e2f\u5e01|\u6e2f\u5143|HKD|USD)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/zhangdan/app/sms/BillMgr;->BillPattern:Ljava/util/regex/Pattern;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zhangdan/app/sms/BillMgr;->BillPatternNongHang:[Ljava/util/regex/Pattern;

    .line 86
    new-array v0, v4, [Ljava/util/regex/Pattern;

    const-string v1, "(\u5e94\u8fd8).*(\u5143|\uffe5|\u4eba\u6c11\u5e01|RMB|\u7f8e\u5143|\u7f8e\u91d1|\u6e2f\u5e01|\u6e2f\u5143|HKD|USD)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/zhangdan/app/sms/BillMgr;->BillPattern:Ljava/util/regex/Pattern;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zhangdan/app/sms/BillMgr;->BillPatternYouChu:[Ljava/util/regex/Pattern;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zhangdan/app/sms/BillMgr;->BillPatternMap:Ljava/util/HashMap;

    .line 93
    sget-object v0, Lcom/zhangdan/app/sms/BillMgr;->BillPatternMap:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/zhangdan/app/sms/BillMgr;->BillPatternGongHang:[Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/zhangdan/app/sms/BillMgr;->BillPatternMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/zhangdan/app/sms/BillMgr;->BillPatternNongHang:[Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/zhangdan/app/sms/BillMgr;->BillPatternMap:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/zhangdan/app/sms/BillMgr;->BillPatternYouChu:[Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/zhangdan/app/sms/BillMgr;->mRegexMap:Ljava/util/HashMap;

    .line 99
    iput-object p1, p0, Lcom/zhangdan/app/sms/BillMgr;->mContext:Landroid/content/Context;

    .line 101
    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/zhangdan/app/sms/BillMgr;->queryRegex(Ljava/lang/String;I)Lcom/zhangdan/app/sms/BillMgr$BillRegex;

    move-result-object v0

    .line 102
    .local v0, reg:Lcom/zhangdan/app/sms/BillMgr$BillRegex;
    return-void
.end method

.method private static getOther(Ljava/lang/String;Lcom/zhangdan/app/sms/BillData;)Z
    .locals 1
    .parameter "content"
    .parameter "billData"

    .prologue
    .line 501
    const-string v0, "\u4fdd\u5355"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u5931\u8d25"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u9000\u8d27"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u6fc0\u6d3b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u5269\u4f59\u989d\u5ea6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u79ef\u5206"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u4f18\u60e0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "\u4e86\u89e3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u6b20\u6b3e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u5f53\u524d\u4f59\u989d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "\u6d88\u8d39"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u652f\u51fa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u8fd8\u6b3e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 502
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 503
    invoke-virtual {p1, p0}, Lcom/zhangdan/app/sms/BillData;->setSms(Ljava/lang/String;)V

    .line 504
    const/4 v0, 0x1

    .line 506
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCreaditCard(Ljava/lang/String;Lcom/zhangdan/app/sms/BillData;)Z
    .locals 2
    .parameter "content"
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 519
    const-string v1, "\u8d37\u6b3e"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u8d26\u6237"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u6d3b\u671f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u5e10\u6237"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u5e10\u53f7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u8d26\u53f7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u8f6c\u8d26"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u8f6c\u5e10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "\u4fe1\u7528\u5361"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 520
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 521
    invoke-virtual {p1, p0}, Lcom/zhangdan/app/sms/BillData;->setSms(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p1, v0}, Lcom/zhangdan/app/sms/BillData;->setIs_CreaditCard(I)V

    .line 525
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isDiscountSms(Ljava/lang/String;Lcom/zhangdan/app/sms/BillData;)Z
    .locals 1
    .parameter "content"
    .parameter "billData"

    .prologue
    .line 510
    const-string v0, "\u8fd4\u8fd8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u4fc3\u9500"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u7279\u60e0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u5927\u793c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u793c\u7269"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u5151\u6362"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u4f18\u60e0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u5355\u7b14\u6ee1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u6d88\u8d39\u91d1\u989d\u6ee1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u6d88\u8d39\u6ee1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u793c\u9047"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u514d\u624b\u7eed\u8d39"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u514d\u606f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u7535\u5f71"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u83b7\u8d60"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u6298"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 512
    invoke-virtual {p1, p0}, Lcom/zhangdan/app/sms/BillData;->setSms(Ljava/lang/String;)V

    .line 513
    const/4 v0, 0x1

    .line 515
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchSpecialBill(ILjava/lang/String;)Z
    .locals 8
    .parameter "bankId"
    .parameter "content"

    .prologue
    const/4 v5, 0x0

    .line 392
    sget-object v6, Lcom/zhangdan/app/sms/BillMgr;->BillPatternMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/util/regex/Pattern;

    .line 393
    .local v4, patternArr:[Ljava/util/regex/Pattern;
    if-nez v4, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v5

    .line 395
    :cond_1
    move-object v0, v4

    .local v0, arr$:[Ljava/util/regex/Pattern;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 396
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 397
    const/4 v5, 0x1

    goto :goto_0

    .line 395
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private parseAmount(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "amountStr"

    .prologue
    .line 481
    sget-object v1, Lcom/zhangdan/app/sms/BillMgr;->AmountPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 482
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 484
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private parseAmount2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 494
    sget-object v1, Lcom/zhangdan/app/sms/BillMgr;->AmountPattern2:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 495
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 497
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private parseBill(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/zhangdan/app/sms/BillData;
    .locals 8
    .parameter "bankId"
    .parameter "bankName"
    .parameter "cardNo"
    .parameter "content"
    .parameter "date"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 406
    new-instance v1, Lcom/zhangdan/app/sms/BillData;

    invoke-direct {v1}, Lcom/zhangdan/app/sms/BillData;-><init>()V

    .line 407
    .local v1, billData:Lcom/zhangdan/app/sms/BillData;
    invoke-virtual {v1, p1}, Lcom/zhangdan/app/sms/BillData;->setBankId(I)V

    .line 408
    invoke-virtual {v1, p2}, Lcom/zhangdan/app/sms/BillData;->setBankName(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v1, v6}, Lcom/zhangdan/app/sms/BillData;->setIs_CreaditCard(I)V

    .line 410
    invoke-virtual {v1, v7}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 411
    invoke-direct {p0, p3}, Lcom/zhangdan/app/sms/BillMgr;->parseCardNo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/sms/BillData;->setCardLast(Ljava/lang/String;)V

    .line 414
    sget-object v6, Lcom/zhangdan/app/sms/BillMgr;->MoneyOfRmbPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 415
    .local v4, m:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 416
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, amountStr:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/zhangdan/app/sms/BillMgr;->parseAmount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 419
    invoke-direct {p0, p4}, Lcom/zhangdan/app/sms/BillMgr;->parseAmount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    :cond_0
    invoke-virtual {v1, v0}, Lcom/zhangdan/app/sms/BillData;->setAmount(Ljava/lang/String;)V

    .line 424
    .end local v0           #amountStr:Ljava/lang/String;
    :goto_0
    const-string v6, "\u5df2\u751f\u6210"

    invoke-virtual {p4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0xd

    if-ne p1, v6, :cond_4

    .line 425
    const-string v6, "\u5df2\u751f\u6210"

    invoke-virtual {p4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 426
    .local v3, index:I
    invoke-virtual {p4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 427
    .local v5, temp:Ljava/lang/String;
    sget-object v6, Lcom/zhangdan/app/sms/BillMgr;->DatePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 428
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 430
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/sms/BillData;->setRepaymentMonth(I)V

    .line 431
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/sms/BillData;->setRepaymentDay(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .end local v3           #index:I
    .end local v5           #temp:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v1, p5, p6}, Lcom/zhangdan/app/sms/BillData;->setDate(J)V

    .line 449
    invoke-virtual {v1, p4}, Lcom/zhangdan/app/sms/BillData;->setSms(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v1}, Lcom/zhangdan/app/sms/BillData;->getRepaymentDay()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/BillData;->getRepaymentMonth()I

    move-result v6

    if-nez v6, :cond_5

    .line 451
    :cond_2
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 458
    :goto_2
    return-object v1

    .line 422
    :cond_3
    invoke-direct {p0, p4}, Lcom/zhangdan/app/sms/BillMgr;->parseAmount2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/sms/BillData;->setAmount(Ljava/lang/String;)V

    goto :goto_0

    .line 432
    .restart local v3       #index:I
    .restart local v5       #temp:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 433
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 437
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #index:I
    .end local v5           #temp:Ljava/lang/String;
    :cond_4
    sget-object v6, Lcom/zhangdan/app/sms/BillMgr;->DatePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 438
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 440
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/sms/BillData;->setRepaymentMonth(I)V

    .line 441
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/sms/BillData;->setRepaymentDay(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 442
    :catch_1
    move-exception v2

    .line 443
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 454
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    invoke-virtual {v1, v7}, Lcom/zhangdan/app/sms/BillData;->setCurrencyType(I)V

    .line 456
    sget-object v6, Lcom/zhangdan/app/util/DateUtils;->sdf2:Ljava/text/SimpleDateFormat;

    invoke-static {p5, p6, v6}, Lcom/zhangdan/app/util/DateUtils;->formatDate(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/sms/BillData;->setDateStr(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private parseCardNo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cardStr"

    .prologue
    .line 468
    sget-object v1, Lcom/zhangdan/app/sms/BillMgr;->CardNoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 469
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 471
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private queryRegex(Ljava/lang/String;I)Lcom/zhangdan/app/sms/BillMgr$BillRegex;
    .locals 11
    .parameter "phone"
    .parameter "bankId"

    .prologue
    .line 117
    move-object v6, p1

    .line 118
    .local v6, key:Ljava/lang/String;
    invoke-static {p1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 119
    const-string v6, "a"

    .line 120
    :cond_0
    iget-object v9, p0, Lcom/zhangdan/app/sms/BillMgr;->mRegexMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zhangdan/app/sms/BillMgr$BillRegex;

    .line 121
    .local v7, regex:Lcom/zhangdan/app/sms/BillMgr$BillRegex;
    if-eqz v7, :cond_1

    move-object v8, v7

    .line 145
    .end local v7           #regex:Lcom/zhangdan/app/sms/BillMgr$BillRegex;
    :goto_0
    return-object v8

    .line 123
    .restart local v7       #regex:Lcom/zhangdan/app/sms/BillMgr$BillRegex;
    :cond_1
    iget-object v9, p0, Lcom/zhangdan/app/sms/BillMgr;->mContext:Landroid/content/Context;

    invoke-static {v9, p1, p2}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->queryRegexByPhone(Landroid/content/Context;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    .line 125
    .local v2, c:Landroid/database/Cursor;
    if-eqz v2, :cond_3

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 126
    const-string v9, "income_regex"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, income:Ljava/lang/String;
    const-string v9, "expend_regex"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, expend:Ljava/lang/String;
    const-string v9, "card_regex"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, card:Ljava/lang/String;
    const-string v9, "amount_regex"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, amount:Ljava/lang/String;
    new-instance v8, Lcom/zhangdan/app/sms/BillMgr$BillRegex;

    invoke-direct {v8}, Lcom/zhangdan/app/sms/BillMgr$BillRegex;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v7           #regex:Lcom/zhangdan/app/sms/BillMgr$BillRegex;
    .local v8, regex:Lcom/zhangdan/app/sms/BillMgr$BillRegex;
    :try_start_1
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    iput-object v9, v8, Lcom/zhangdan/app/sms/BillMgr$BillRegex;->incomePattern:Ljava/util/regex/Pattern;

    .line 132
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    iput-object v9, v8, Lcom/zhangdan/app/sms/BillMgr$BillRegex;->expendPattern:Ljava/util/regex/Pattern;

    .line 133
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    iput-object v9, v8, Lcom/zhangdan/app/sms/BillMgr$BillRegex;->cardPattern:Ljava/util/regex/Pattern;

    .line 134
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    iput-object v9, v8, Lcom/zhangdan/app/sms/BillMgr$BillRegex;->amountPattern:Ljava/util/regex/Pattern;

    .line 135
    iget-object v9, p0, Lcom/zhangdan/app/sms/BillMgr;->mRegexMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    if-eqz v2, :cond_2

    .line 145
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v7, v8

    .end local v8           #regex:Lcom/zhangdan/app/sms/BillMgr$BillRegex;
    .restart local v7       #regex:Lcom/zhangdan/app/sms/BillMgr$BillRegex;
    goto :goto_0

    .line 139
    .end local v1           #amount:Ljava/lang/String;
    .end local v3           #card:Ljava/lang/String;
    .end local v4           #expend:Ljava/lang/String;
    .end local v5           #income:Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v9, p0, Lcom/zhangdan/app/sms/BillMgr;->mRegexMap:Ljava/util/HashMap;

    const-string v10, "a"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/zhangdan/app/sms/BillMgr$BillRegex;

    move-object v7, v0

    .line 140
    iget-object v9, p0, Lcom/zhangdan/app/sms/BillMgr;->mRegexMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    if-eqz v2, :cond_4

    .line 145
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v8, v7

    .local v8, regex:Ljava/lang/Object;
    goto :goto_0

    .line 144
    .end local v8           #regex:Ljava/lang/Object;
    :catchall_0
    move-exception v9

    :goto_1
    if-eqz v2, :cond_5

    .line 145
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v9

    .line 144
    .end local v7           #regex:Lcom/zhangdan/app/sms/BillMgr$BillRegex;
    .restart local v1       #amount:Ljava/lang/String;
    .restart local v3       #card:Ljava/lang/String;
    .restart local v4       #expend:Ljava/lang/String;
    .restart local v5       #income:Ljava/lang/String;
    .local v8, regex:Lcom/zhangdan/app/sms/BillMgr$BillRegex;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8           #regex:Lcom/zhangdan/app/sms/BillMgr$BillRegex;
    .restart local v7       #regex:Lcom/zhangdan/app/sms/BillMgr$BillRegex;
    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iput-object v1, p0, Lcom/zhangdan/app/sms/BillMgr;->mContext:Landroid/content/Context;

    .line 106
    iget-object v0, p0, Lcom/zhangdan/app/sms/BillMgr;->mRegexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 107
    iput-object v1, p0, Lcom/zhangdan/app/sms/BillMgr;->mRegexMap:Ljava/util/HashMap;

    .line 108
    return-void
.end method

.method public parseSms(Landroid/content/Context;Lcom/zhangdan/app/sms/SmsData;)Lcom/zhangdan/app/sms/BillData;
    .locals 26
    .parameter "context"
    .parameter "smsData"

    .prologue
    .line 163
    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/sms/SmsData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v22

    .line 164
    .local v22, phone:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/sms/SmsData;->getSmsbody()Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, content:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 166
    const-string v2, "BillMgr"

    const-string v7, "content is null"

    invoke-static {v2, v7}, Lcom/umeng/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v11, 0x0

    .line 383
    :cond_0
    :goto_0
    return-object v11

    .line 169
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->queryBankByPhone(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 171
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_1e

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 173
    const-string v2, "bank_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 174
    .local v3, bankId:I
    const-string v2, "bank_name"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, bankName:Ljava/lang/String;
    new-instance v14, Lcom/zhangdan/app/sms/BillData;

    invoke-direct {v14}, Lcom/zhangdan/app/sms/BillData;-><init>()V

    .line 179
    .local v14, data:Lcom/zhangdan/app/sms/BillData;
    invoke-virtual {v14, v3}, Lcom/zhangdan/app/sms/BillData;->setBankId(I)V

    .line 180
    invoke-virtual {v14, v4}, Lcom/zhangdan/app/sms/BillData;->setBankName(Ljava/lang/String;)V

    .line 182
    invoke-static {v6, v14}, Lcom/zhangdan/app/sms/BillMgr;->isCreaditCard(Ljava/lang/String;Lcom/zhangdan/app/sms/BillData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 380
    if-eqz v13, :cond_2

    .line 381
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v11, v14

    goto :goto_0

    .line 186
    :cond_3
    const/16 v23, 0x0

    .line 187
    .local v23, regex:Lcom/zhangdan/app/sms/BillMgr$BillRegex;
    if-nez v23, :cond_4

    .line 188
    :try_start_1
    sget-object v23, Lcom/zhangdan/app/sms/BillMgr;->DEFAULT_REGEX:Lcom/zhangdan/app/sms/BillMgr$BillRegex;

    .line 190
    :cond_4
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/zhangdan/app/sms/BillMgr$BillRegex;->cardPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 191
    .local v21, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    .line 193
    .local v16, hasCardNo:Z
    const-string v5, ""

    .line 194
    .local v5, cardNo:Ljava/lang/String;
    if-eqz v16, :cond_5

    .line 195
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 197
    .local v17, index:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int v2, v2, v17

    add-int/lit8 v18, v2, 0x2

    .line 198
    .local v18, last:I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v18

    if-le v2, v0, :cond_5

    .line 199
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 200
    .local v24, temp:Ljava/lang/String;
    const-string v2, "\u5e74"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 201
    const-string v5, ""

    .line 208
    .end local v17           #index:I
    .end local v18           #last:I
    .end local v24           #temp:Ljava/lang/String;
    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/zhangdan/app/sms/BillData;->setIs_CreaditCard(I)V

    .line 209
    invoke-static {v6, v14}, Lcom/zhangdan/app/sms/BillMgr;->getOther(Ljava/lang/String;Lcom/zhangdan/app/sms/BillData;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    .line 380
    if-eqz v13, :cond_6

    .line 381
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v11, v14

    goto/16 :goto_0

    .line 214
    :cond_7
    :try_start_2
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/zhangdan/app/sms/BillMgr$BillRegex;->expendPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 215
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 216
    new-instance v11, Lcom/zhangdan/app/sms/BillData;

    invoke-direct {v11}, Lcom/zhangdan/app/sms/BillData;-><init>()V

    .line 217
    .local v11, billData:Lcom/zhangdan/app/sms/BillData;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setIs_CreaditCard(I)V

    .line 218
    invoke-virtual {v11, v3}, Lcom/zhangdan/app/sms/BillData;->setBankId(I)V

    .line 219
    invoke-virtual {v11, v4}, Lcom/zhangdan/app/sms/BillData;->setBankName(Ljava/lang/String;)V

    .line 220
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 221
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zhangdan/app/sms/BillMgr;->parseCardNo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setCardLast(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v11, v6}, Lcom/zhangdan/app/sms/BillData;->setSms(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    .line 224
    .local v15, group:Ljava/lang/String;
    const-string v2, "\u6ee1"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "\u4f18\u60e0"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "\u5237"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "\u7279\u60e0"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "\u8fd8"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 225
    :cond_8
    invoke-virtual {v6, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 226
    .restart local v17       #index:I
    if-lez v17, :cond_9

    .line 227
    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 228
    .restart local v24       #temp:Ljava/lang/String;
    sget-object v2, Lcom/zhangdan/app/sms/BillMgr;->DataPattern1:Ljava/util/regex/Pattern;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v25

    .line 229
    .local v25, tempMatcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v25 .. v25}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_a

    .line 230
    const/4 v2, 0x4

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 380
    if-eqz v13, :cond_0

    .line 381
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 234
    .end local v24           #temp:Ljava/lang/String;
    .end local v25           #tempMatcher:Ljava/util/regex/Matcher;
    :cond_9
    const/4 v2, 0x4

    :try_start_3
    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 380
    if-eqz v13, :cond_0

    .line 381
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 239
    .end local v17           #index:I
    :cond_a
    :try_start_4
    const-string v2, "\u989d\u5ea6"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 240
    invoke-virtual {v6, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 241
    .restart local v17       #index:I
    if-lez v17, :cond_b

    .line 242
    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 243
    .restart local v24       #temp:Ljava/lang/String;
    sget-object v2, Lcom/zhangdan/app/sms/BillMgr;->DataPattern1:Ljava/util/regex/Pattern;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v25

    .line 244
    .restart local v25       #tempMatcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v25 .. v25}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_c

    .line 245
    const/4 v2, 0x3

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 380
    if-eqz v13, :cond_0

    .line 381
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 249
    .end local v24           #temp:Ljava/lang/String;
    .end local v25           #tempMatcher:Ljava/util/regex/Matcher;
    :cond_b
    const/4 v2, 0x3

    :try_start_5
    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 380
    if-eqz v13, :cond_0

    .line 381
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 254
    .end local v17           #index:I
    :cond_c
    :try_start_6
    sget-object v2, Lcom/zhangdan/app/sms/BillMgr;->MoneyOfRmbPattern:Ljava/util/regex/Pattern;

    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 255
    .local v19, m:Ljava/util/regex/Matcher;
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 256
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    .line 257
    .local v10, amountStr:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/zhangdan/app/sms/BillMgr;->parseAmount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 258
    invoke-static {v10}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 259
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/zhangdan/app/sms/BillMgr;->parseAmount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 260
    :cond_d
    invoke-virtual {v11, v10}, Lcom/zhangdan/app/sms/BillData;->setAmount(Ljava/lang/String;)V

    .line 267
    .end local v10           #amountStr:Ljava/lang/String;
    :goto_1
    sget-object v2, Lcom/zhangdan/app/sms/BillMgr;->MoneyOfUsdPattern:Ljava/util/regex/Pattern;

    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 268
    .local v20, m1:Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 269
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    .line 270
    .restart local v10       #amountStr:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/zhangdan/app/sms/BillMgr;->parseAmount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 271
    invoke-static {v10}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 272
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/zhangdan/app/sms/BillMgr;->parseAmount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 273
    :cond_e
    invoke-virtual {v11, v10}, Lcom/zhangdan/app/sms/BillData;->setUsAmount(Ljava/lang/String;)V

    .line 277
    .end local v10           #amountStr:Ljava/lang/String;
    :cond_f
    invoke-virtual {v11}, Lcom/zhangdan/app/sms/BillData;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v11}, Lcom/zhangdan/app/sms/BillData;->getUsAmount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 278
    const/4 v2, 0x3

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 380
    if-eqz v13, :cond_0

    .line 381
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 263
    .end local v20           #m1:Ljava/util/regex/Matcher;
    :cond_10
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/zhangdan/app/sms/BillMgr;->parseAmount2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setAmount(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 380
    .end local v3           #bankId:I
    .end local v4           #bankName:Ljava/lang/String;
    .end local v5           #cardNo:Ljava/lang/String;
    .end local v11           #billData:Lcom/zhangdan/app/sms/BillData;
    .end local v14           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v15           #group:Ljava/lang/String;
    .end local v16           #hasCardNo:Z
    .end local v19           #m:Ljava/util/regex/Matcher;
    .end local v21           #matcher:Ljava/util/regex/Matcher;
    .end local v23           #regex:Lcom/zhangdan/app/sms/BillMgr$BillRegex;
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_11

    .line 381
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v2

    .line 282
    .restart local v3       #bankId:I
    .restart local v4       #bankName:Ljava/lang/String;
    .restart local v5       #cardNo:Ljava/lang/String;
    .restart local v11       #billData:Lcom/zhangdan/app/sms/BillData;
    .restart local v14       #data:Lcom/zhangdan/app/sms/BillData;
    .restart local v15       #group:Ljava/lang/String;
    .restart local v16       #hasCardNo:Z
    .restart local v19       #m:Ljava/util/regex/Matcher;
    .restart local v20       #m1:Ljava/util/regex/Matcher;
    .restart local v21       #matcher:Ljava/util/regex/Matcher;
    .restart local v23       #regex:Lcom/zhangdan/app/sms/BillMgr$BillRegex;
    :cond_12
    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setCurrencyType(I)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/sms/SmsData;->getDate()J

    move-result-wide v7

    invoke-virtual {v11, v7, v8}, Lcom/zhangdan/app/sms/BillData;->setDate(J)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/sms/SmsData;->getDate()J

    move-result-wide v7

    sget-object v2, Lcom/zhangdan/app/util/DateUtils;->sdf2:Ljava/text/SimpleDateFormat;

    invoke-static {v7, v8, v2}, Lcom/zhangdan/app/util/DateUtils;->formatDate(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setDateStr(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v11, v6}, Lcom/zhangdan/app/sms/BillData;->setSms(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 380
    if-eqz v13, :cond_0

    .line 381
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 289
    .end local v11           #billData:Lcom/zhangdan/app/sms/BillData;
    .end local v15           #group:Ljava/lang/String;
    .end local v19           #m:Ljava/util/regex/Matcher;
    .end local v20           #m1:Ljava/util/regex/Matcher;
    :cond_13
    :try_start_9
    invoke-static {v6, v14}, Lcom/zhangdan/app/sms/BillMgr;->isDiscountSms(Ljava/lang/String;Lcom/zhangdan/app/sms/BillData;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v2

    if-eqz v2, :cond_15

    .line 380
    if-eqz v13, :cond_14

    .line 381
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_14
    move-object v11, v14

    goto/16 :goto_0

    .line 296
    :cond_15
    :try_start_a
    sget-object v2, Lcom/zhangdan/app/sms/BillMgr;->RepaymentPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 297
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    .line 298
    .local v12, billFound:Z
    if-nez v12, :cond_16

    .line 299
    sget-object v2, Lcom/zhangdan/app/sms/BillMgr;->RepaymentPattern2:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 300
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    .line 302
    :cond_16
    if-nez v12, :cond_17

    .line 303
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Lcom/zhangdan/app/sms/BillMgr;->matchSpecialBill(ILjava/lang/String;)Z

    move-result v12

    .line 306
    :cond_17
    if-eqz v12, :cond_18

    .line 307
    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/sms/SmsData;->getDate()J

    move-result-wide v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/zhangdan/app/sms/BillMgr;->parseBill(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/zhangdan/app/sms/BillData;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v11

    .line 380
    .restart local v11       #billData:Lcom/zhangdan/app/sms/BillData;
    if-eqz v13, :cond_0

    .line 381
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 314
    .end local v11           #billData:Lcom/zhangdan/app/sms/BillData;
    :cond_18
    :try_start_b
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/zhangdan/app/sms/BillMgr$BillRegex;->incomePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 315
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 316
    new-instance v11, Lcom/zhangdan/app/sms/BillData;

    invoke-direct {v11}, Lcom/zhangdan/app/sms/BillData;-><init>()V

    .line 317
    .restart local v11       #billData:Lcom/zhangdan/app/sms/BillData;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setIs_CreaditCard(I)V

    .line 318
    invoke-virtual {v11, v3}, Lcom/zhangdan/app/sms/BillData;->setBankId(I)V

    .line 319
    invoke-virtual {v11, v4}, Lcom/zhangdan/app/sms/BillData;->setBankName(Ljava/lang/String;)V

    .line 320
    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 321
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zhangdan/app/sms/BillMgr;->parseCardNo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setCardLast(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v11, v6}, Lcom/zhangdan/app/sms/BillData;->setSms(Ljava/lang/String;)V

    .line 323
    sget-object v2, Lcom/zhangdan/app/sms/BillMgr;->MoneyOfRmbPattern:Ljava/util/regex/Pattern;

    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 324
    .restart local v19       #m:Ljava/util/regex/Matcher;
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 325
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    .line 326
    .restart local v10       #amountStr:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/zhangdan/app/sms/BillMgr;->parseAmount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 327
    invoke-static {v10}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 328
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/zhangdan/app/sms/BillMgr;->parseAmount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 329
    :cond_19
    invoke-virtual {v11, v10}, Lcom/zhangdan/app/sms/BillData;->setAmount(Ljava/lang/String;)V

    .line 335
    .end local v10           #amountStr:Ljava/lang/String;
    :goto_2
    invoke-virtual {v11}, Lcom/zhangdan/app/sms/BillData;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v11}, Lcom/zhangdan/app/sms/BillData;->getUsAmount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 336
    const/4 v2, 0x3

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 380
    if-eqz v13, :cond_0

    .line 381
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 332
    :cond_1a
    :try_start_c
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/zhangdan/app/sms/BillMgr;->parseAmount2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setAmount(Ljava/lang/String;)V

    goto :goto_2

    .line 340
    :cond_1b
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setCurrencyType(I)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/sms/SmsData;->getDate()J

    move-result-wide v7

    invoke-virtual {v11, v7, v8}, Lcom/zhangdan/app/sms/BillData;->setDate(J)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/sms/SmsData;->getDate()J

    move-result-wide v7

    sget-object v2, Lcom/zhangdan/app/util/DateUtils;->sdf2:Ljava/text/SimpleDateFormat;

    invoke-static {v7, v8, v2}, Lcom/zhangdan/app/util/DateUtils;->formatDate(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setDateStr(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 380
    if-eqz v13, :cond_0

    .line 381
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 347
    .end local v11           #billData:Lcom/zhangdan/app/sms/BillData;
    .end local v19           #m:Ljava/util/regex/Matcher;
    :cond_1c
    :try_start_d
    sget-object v2, Lcom/zhangdan/app/sms/BillMgr;->BillPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 348
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    .line 350
    if-eqz v12, :cond_1d

    .line 351
    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/sms/SmsData;->getDate()J

    move-result-wide v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/zhangdan/app/sms/BillMgr;->parseBill(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/zhangdan/app/sms/BillData;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v11

    .line 380
    .restart local v11       #billData:Lcom/zhangdan/app/sms/BillData;
    if-eqz v13, :cond_0

    .line 381
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 356
    .end local v11           #billData:Lcom/zhangdan/app/sms/BillData;
    :cond_1d
    packed-switch v3, :pswitch_data_0

    .line 380
    .end local v3           #bankId:I
    .end local v4           #bankName:Ljava/lang/String;
    .end local v5           #cardNo:Ljava/lang/String;
    .end local v12           #billFound:Z
    .end local v14           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v16           #hasCardNo:Z
    .end local v21           #matcher:Ljava/util/regex/Matcher;
    .end local v23           #regex:Lcom/zhangdan/app/sms/BillMgr$BillRegex;
    :cond_1e
    if-eqz v13, :cond_1f

    .line 381
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_1f
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 358
    .restart local v3       #bankId:I
    .restart local v4       #bankName:Ljava/lang/String;
    .restart local v5       #cardNo:Ljava/lang/String;
    .restart local v12       #billFound:Z
    .restart local v14       #data:Lcom/zhangdan/app/sms/BillData;
    .restart local v16       #hasCardNo:Z
    .restart local v21       #matcher:Ljava/util/regex/Matcher;
    .restart local v23       #regex:Lcom/zhangdan/app/sms/BillMgr$BillRegex;
    :pswitch_0
    :try_start_e
    sget-object v2, Lcom/zhangdan/app/sms/BillMgr;->AmountPatternNonhang:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 359
    .restart local v19       #m:Ljava/util/regex/Matcher;
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 360
    new-instance v11, Lcom/zhangdan/app/sms/BillData;

    invoke-direct {v11}, Lcom/zhangdan/app/sms/BillData;-><init>()V

    .line 361
    .restart local v11       #billData:Lcom/zhangdan/app/sms/BillData;
    invoke-virtual {v11, v3}, Lcom/zhangdan/app/sms/BillData;->setBankId(I)V

    .line 362
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setIs_CreaditCard(I)V

    .line 363
    invoke-virtual {v11, v4}, Lcom/zhangdan/app/sms/BillData;->setBankName(Ljava/lang/String;)V

    .line 364
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zhangdan/app/sms/BillMgr;->parseCardNo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setCardLast(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    .line 366
    .local v9, amount:Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 367
    const-string v2, "-"

    const-string v7, ""

    invoke-virtual {v9, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setAmount(Ljava/lang/String;)V

    .line 369
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setCurrencyType(I)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/sms/SmsData;->getDate()J

    move-result-wide v7

    invoke-virtual {v11, v7, v8}, Lcom/zhangdan/app/sms/BillData;->setDate(J)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/sms/SmsData;->getDate()J

    move-result-wide v7

    sget-object v2, Lcom/zhangdan/app/util/DateUtils;->sdf2:Ljava/text/SimpleDateFormat;

    invoke-static {v7, v8, v2}, Lcom/zhangdan/app/util/DateUtils;->formatDate(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/zhangdan/app/sms/BillData;->setDateStr(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v11, v6}, Lcom/zhangdan/app/sms/BillData;->setSms(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 380
    if-eqz v13, :cond_0

    .line 381
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 366
    :cond_20
    const/4 v2, 0x2

    goto :goto_3

    .line 356
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
