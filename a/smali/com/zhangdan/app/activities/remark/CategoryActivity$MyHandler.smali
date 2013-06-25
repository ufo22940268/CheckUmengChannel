.class Lcom/zhangdan/app/activities/remark/CategoryActivity$MyHandler;
.super Landroid/os/Handler;
.source "CategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/remark/CategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyHandler"
.end annotation


# instance fields
.field mWeakReferenceActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/zhangdan/app/activities/remark/CategoryActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/remark/CategoryActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$MyHandler;->mWeakReferenceActivity:Ljava/lang/ref/WeakReference;

    .line 100
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 105
    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$MyHandler;->mWeakReferenceActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/remark/CategoryActivity;

    .line 106
    .local v0, activity:Lcom/zhangdan/app/activities/remark/CategoryActivity;
    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 110
    .local v2, groupList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;>;"
    new-instance v1, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;-><init>(Lcom/zhangdan/app/activities/remark/CategoryActivity;Ljava/util/List;)V

    .line 111
    .local v1, adapter:Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;
    #getter for: Lcom/zhangdan/app/activities/remark/CategoryActivity;->mExpandableListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->access$100(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 112
    #getter for: Lcom/zhangdan/app/activities/remark/CategoryActivity;->mExpandableListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->access$100(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    goto :goto_0
.end method
