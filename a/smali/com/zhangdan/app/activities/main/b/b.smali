.class public final Lcom/zhangdan/app/activities/main/b/b;
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

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v5, 0x4

    const/4 v0, 0x1

    check-cast p1, Lcom/zhangdan/app/data/model/j;

    check-cast p2, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v3

    if-eq v3, v0, :cond_0

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v3

    if-ne v3, v5, :cond_4

    :cond_0
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v0

    if-ne v0, v5, :cond_3

    :cond_1
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->u()I

    move-result v0

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->u()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    :cond_5
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v3

    if-eq v3, v0, :cond_2

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v3

    if-eq v3, v5, :cond_2

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v2

    if-nez v2, :cond_2

    :cond_8
    move v0, v1

    goto :goto_0
.end method
