.class Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onRefreshing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0
    .parameter

    .prologue
    .line 772
    .local p0, this:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;,"Lcom/handmark/pulltorefresh/library/PullToRefreshBase.2;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmoothScrollFinished()V
    .locals 1

    .prologue
    .line 775
    .local p0, this:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;,"Lcom/handmark/pulltorefresh/library/PullToRefreshBase.2;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    #calls: Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->callRefreshListener()V
    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->access$000(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    .line 776
    return-void
.end method
