.class Lcom/zhangdan/app/activities/detail/CardHistoryActivity$1;
.super Ljava/lang/Object;
.source "CardHistoryActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->initialView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/4 v1, -0x1

    .line 88
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    #calls: Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->getAndSetSlot(I)V
    invoke-static {v0, p3}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->access$000(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;I)V

    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->lastClick:I
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->access$100(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHisListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->access$200(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->lastClick:I
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->access$100(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->lastClick:I
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->access$100(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)I

    move-result v0

    if-eq v0, p3, :cond_2

    .line 93
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHisListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->access$200(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->lastClick:I
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->access$100(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 94
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHisListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->access$200(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 101
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    #setter for: Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->lastClick:I
    invoke-static {v0, p3}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->access$102(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;I)I

    .line 102
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHisListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->access$200(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->setSelection(I)V

    .line 103
    const/4 v0, 0x1

    return v0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->lastClick:I
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->access$100(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 96
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHisListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->access$200(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHisListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->access$200(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHisListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->access$200(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity$1;->this$0:Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->mHisListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;->access$200(Lcom/zhangdan/app/activities/detail/CardHistoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0
.end method
