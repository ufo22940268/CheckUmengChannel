.class final Lcom/zhangdan/preferential/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/ab;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/ae;->a:Lcom/zhangdan/preferential/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/zhangdan/preferential/ah;

    iget-object v1, p0, Lcom/zhangdan/preferential/ae;->a:Lcom/zhangdan/preferential/ab;

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/preferential/ah;-><init>(Lcom/zhangdan/preferential/ab;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/ah;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/zhangdan/preferential/aj;

    iget-object v1, p0, Lcom/zhangdan/preferential/ae;->a:Lcom/zhangdan/preferential/ab;

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/preferential/aj;-><init>(Lcom/zhangdan/preferential/ab;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/aj;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
