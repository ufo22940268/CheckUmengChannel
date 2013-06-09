.class final Lcom/zhangdan/app/activities/remark/h;
.super Landroid/os/Handler;


# instance fields
.field a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/remark/CategoryActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/h;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/remark/CategoryActivity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    new-instance v2, Lcom/zhangdan/app/activities/remark/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0, v1}, Lcom/zhangdan/app/activities/remark/f;-><init>(Lcom/zhangdan/app/activities/remark/CategoryActivity;Ljava/util/List;)V

    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->a(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->a(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    goto :goto_0
.end method
