.class final Lcom/handmark/pulltorefresh/library/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/handmark/pulltorefresh/library/i;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 1

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method
