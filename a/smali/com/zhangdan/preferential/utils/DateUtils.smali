.class public Lcom/zhangdan/preferential/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static DATE_FORMATE:Ljava/text/SimpleDateFormat; = null

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "date"

.field private static final PREF_KEY_TODAY:Ljava/lang/String; = "today"

.field public static final READABLE_WEEKS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zhangdan/preferential/utils/DateUtils;->DATE_FORMATE:Ljava/text/SimpleDateFormat;

    .line 26
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u5468\u4e00"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u5468\u4e8c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u5468\u4e09"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u5468\u56db"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u5468\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5468\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u5468\u65e5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zhangdan/preferential/utils/DateUtils;->READABLE_WEEKS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearToday(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 85
    const-string v2, "date"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 86
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    return-void
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 3
    .parameter "time"

    .prologue
    .line 38
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 39
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 40
    sget-object v1, Lcom/zhangdan/preferential/utils/DateUtils;->DATE_FORMATE:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLastOpenDay(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 92
    const-string v1, "date"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "today"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getServerDateByWeekConstants(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 110
    const/4 v0, -0x8

    if-ne p0, v0, :cond_0

    .line 111
    invoke-static {}, Lcom/zhangdan/preferential/utils/DateUtils;->getToday()I

    move-result v0

    .line 113
    :goto_0
    return v0

    :cond_0
    neg-int v0, p0

    goto :goto_0
.end method

.method public static getToday()I
    .locals 3

    .prologue
    const/4 v1, 0x7

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 77
    .local v0, raw:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 80
    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    goto :goto_0
.end method

.method public static hasOpenedToday(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 98
    invoke-static {}, Lcom/zhangdan/preferential/utils/DateUtils;->getToday()I

    move-result v0

    invoke-static {p0}, Lcom/zhangdan/preferential/utils/DateUtils;->getLastOpenDay(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static markLastOpenDay(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 102
    const-string v2, "date"

    const v3, 0x8000

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 104
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "today"

    invoke-static {}, Lcom/zhangdan/preferential/utils/DateUtils;->getToday()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    return-void
.end method

.method public static toReadableDayOfWeek(C)Ljava/lang/String;
    .locals 2
    .parameter "week"

    .prologue
    .line 57
    add-int/lit8 v0, p0, -0x30

    .line 58
    .local v0, index:I
    :try_start_0
    sget-object v1, Lcom/zhangdan/preferential/utils/DateUtils;->READABLE_WEEKS:[Ljava/lang/String;

    aget-object v1, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-object v1

    .line 59
    :catch_0
    move-exception v1

    .line 62
    const-string v1, ""

    goto :goto_0
.end method

.method public static toReadableDayOfWeeks(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "discountWeeks"

    .prologue
    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 45
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u6bcf\u65e5"

    aput-object v3, v1, v2

    .line 51
    :cond_0
    return-object v1

    .line 47
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 48
    .local v1, strs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/zhangdan/preferential/utils/DateUtils;->toReadableDayOfWeek(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
