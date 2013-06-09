.class final Lcom/zhangdan/app/activities/bankservice/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/bankservice/a;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/bankservice/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/bankservice/e;->a:Lcom/zhangdan/app/activities/bankservice/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/zhangdan/app/data/model/a;

    check-cast p2, Lcom/zhangdan/app/data/model/a;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/a;->f()I

    move-result v0

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/a;->f()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
