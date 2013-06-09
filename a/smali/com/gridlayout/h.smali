.class final Lcom/gridlayout/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field final synthetic a:Lcom/gridlayout/GridLayout;


# direct methods
.method constructor <init>(Lcom/gridlayout/GridLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/gridlayout/h;->a:Lcom/gridlayout/GridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/gridlayout/h;->a:Lcom/gridlayout/GridLayout;

    invoke-static {v0}, Lcom/gridlayout/GridLayout;->a(Lcom/gridlayout/GridLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gridlayout/h;->a:Lcom/gridlayout/GridLayout;

    invoke-static {v0}, Lcom/gridlayout/GridLayout;->a(Lcom/gridlayout/GridLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/gridlayout/h;->a:Lcom/gridlayout/GridLayout;

    invoke-static {v0}, Lcom/gridlayout/GridLayout;->b(Lcom/gridlayout/GridLayout;)V

    return-void
.end method

.method public final onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/gridlayout/h;->a:Lcom/gridlayout/GridLayout;

    invoke-static {v0}, Lcom/gridlayout/GridLayout;->a(Lcom/gridlayout/GridLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gridlayout/h;->a:Lcom/gridlayout/GridLayout;

    invoke-static {v0}, Lcom/gridlayout/GridLayout;->a(Lcom/gridlayout/GridLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/gridlayout/h;->a:Lcom/gridlayout/GridLayout;

    invoke-static {v0}, Lcom/gridlayout/GridLayout;->b(Lcom/gridlayout/GridLayout;)V

    return-void
.end method
