.class Lcom/zhangdan/preferential/ShopDetailActivity$1;
.super Ljava/lang/Object;
.source "ShopDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/preferential/ShopDetailActivity;->buildDialog([Ljava/lang/String;[Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

.field final synthetic val$intents:[Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/ShopDetailActivity;[Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$1;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    iput-object p2, p0, Lcom/zhangdan/preferential/ShopDetailActivity$1;->val$intents:[Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$1;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$1;->val$intents:[Landroid/content/Intent;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/ShopDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 236
    return-void
.end method
