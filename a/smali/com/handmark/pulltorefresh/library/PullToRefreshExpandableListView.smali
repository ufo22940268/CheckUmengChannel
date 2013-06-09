.class public Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/handmark/pulltorefresh/library/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/p;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_0
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setId(I)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/handmark/pulltorefresh/library/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/o;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0
.end method

.method public final s()Lcom/handmark/pulltorefresh/library/l;
    .locals 1

    sget-object v0, Lcom/handmark/pulltorefresh/library/l;->a:Lcom/handmark/pulltorefresh/library/l;

    return-object v0
.end method
