.class Lcom/zhangdan/preferential/ShopDetailActivity$2;
.super Ljava/lang/Object;
.source "ShopDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/preferential/ShopDetailActivity;->buildDialog(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

.field final synthetic val$shops:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/ShopDetailActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$2;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    iput-object p2, p0, Lcom/zhangdan/preferential/ShopDetailActivity$2;->val$shops:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 257
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$2;->val$shops:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/data/model/Shop;

    iget-object v0, v1, Lcom/zhangdan/preferential/data/model/Shop;->id:Ljava/lang/String;

    .line 258
    .local v0, shopId:Ljava/lang/String;
    new-instance v1, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;

    iget-object v2, p0, Lcom/zhangdan/preferential/ShopDetailActivity$2;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;-><init>(Lcom/zhangdan/preferential/ShopDetailActivity;Lcom/zhangdan/preferential/ShopDetailActivity$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 259
    return-void
.end method
