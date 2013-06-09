.class public final Lcom/zhangdan/app/activities/chart/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    const-wide/16 v4, 0x0

    check-cast p1, Lcom/zhangdan/app/activities/chart/b/b;

    check-cast p2, Lcom/zhangdan/app/activities/chart/b/b;

    invoke-virtual {p2}, Lcom/zhangdan/app/activities/chart/b/b;->c()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/zhangdan/app/activities/chart/b/b;->c()D

    move-result-wide v2

    sub-double/2addr v0, v2

    cmpl-double v2, v0, v4

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
