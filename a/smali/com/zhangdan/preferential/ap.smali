.class final Lcom/zhangdan/preferential/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/ShopDetailActivity;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/ShopDetailActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/ap;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    iput-object p2, p0, Lcom/zhangdan/preferential/ap;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zhangdan/preferential/ap;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/k;

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/k;->a:Ljava/lang/String;

    new-instance v1, Lcom/zhangdan/preferential/aq;

    iget-object v2, p0, Lcom/zhangdan/preferential/ap;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {v1, v2, v3}, Lcom/zhangdan/preferential/aq;-><init>(Lcom/zhangdan/preferential/ShopDetailActivity;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/aq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
