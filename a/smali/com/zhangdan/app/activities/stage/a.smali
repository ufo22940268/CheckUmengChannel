.class public final Lcom/zhangdan/app/activities/stage/a;
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
    .locals 2

    check-cast p1, Lcom/zhangdan/app/data/model/e;

    check-cast p2, Lcom/zhangdan/app/data/model/e;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/e;->f()I

    move-result v0

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/e;->f()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
