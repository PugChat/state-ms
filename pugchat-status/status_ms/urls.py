from rest_framework import routers
from .api import StateViewSet

router = routers.DefaultRouter()
router.register('api/States', StateViewSet, 'States')

urlpatterns = router.urls