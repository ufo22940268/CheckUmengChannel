.class Lcom/zhangdan/preferential/ShopListFragment$3;
.super Ljava/lang/Object;
.source "ShopListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/preferential/ShopListFragment;->buildConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/ShopListFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/ShopListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 674
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopListFragment$3;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$3;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mSettingManager:Lcom/zhangdan/preferential/utils/SettingManager;
    invoke-static {v0}, Lcom/zhangdan/preferential/ShopListFragment;->access$2500(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/utils/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/utils/SettingManager;->markHasSetTodayHint()V

    .line 678
    return-void
.end method
