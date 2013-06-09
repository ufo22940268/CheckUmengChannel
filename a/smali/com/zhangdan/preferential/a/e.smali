.class public final Lcom/zhangdan/preferential/a/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zhangdan/preferential/a/e;->b:Ljava/text/SimpleDateFormat;

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

    sput-object v0, Lcom/zhangdan/preferential/a/e;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a()I
    .locals 3

    const/4 v0, 0x7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method public static a(I)I
    .locals 1

    const/4 v0, -0x8

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/zhangdan/preferential/a/e;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    neg-int v0, p0

    goto :goto_0
.end method

.method private static a(C)Ljava/lang/String;
    .locals 2

    add-int/lit8 v0, p0, -0x30

    :try_start_0
    sget-object v1, Lcom/zhangdan/preferential/a/e;->a:[Ljava/lang/String;

    aget-object v0, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "date"

    const v1, 0x8000

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "today"

    invoke-static {}, Lcom/zhangdan/preferential/a/e;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u6bcf\u65e5"

    aput-object v2, v1, v0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/zhangdan/preferential/a/e;->a(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
