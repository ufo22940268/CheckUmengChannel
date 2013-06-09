.class public final Lcom/zhangdan/app/activities/chart/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/zhangdan/app/activities/chart/b/e;Lcom/zhangdan/app/activities/chart/b/e;)I
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/b/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/zhangdan/app/activities/chart/b/e;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    sub-int v0, v1, v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/zhangdan/app/activities/chart/b/e;

    check-cast p2, Lcom/zhangdan/app/activities/chart/b/e;

    invoke-static {p1, p2}, Lcom/zhangdan/app/activities/chart/c/d;->a(Lcom/zhangdan/app/activities/chart/b/e;Lcom/zhangdan/app/activities/chart/b/e;)I

    move-result v0

    return v0
.end method
