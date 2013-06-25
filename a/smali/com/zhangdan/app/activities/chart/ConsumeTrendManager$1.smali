.class Lcom/zhangdan/app/activities/chart/ConsumeTrendManager$1;
.super Ljava/lang/Object;
.source "ConsumeTrendManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager$1;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090194

    if-ne v2, v3, :cond_0

    .line 135
    new-instance v1, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;

    invoke-direct {v1}, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;-><init>()V

    .line 136
    .local v1, dialogFragment:Lcom/zhangdan/app/activities/chart/NameListDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "names"

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager$1;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;

    #getter for: Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mNameList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->access$000(Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 138
    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 139
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager$1;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;

    #getter for: Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mOnCardNameSelectedListener:Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;
    invoke-static {v2}, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->access$100(Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;)Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;->setOnCardNameSelectedListener(Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;)V

    .line 140
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager$1;->this$0:Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;

    #getter for: Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->mFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v2}, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->access$200(Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "NameDialog"

    invoke-virtual {v1, v2, v3}, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 142
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #dialogFragment:Lcom/zhangdan/app/activities/chart/NameListDialogFragment;
    :cond_0
    return-void
.end method
