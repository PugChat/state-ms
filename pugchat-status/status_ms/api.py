from status_ms.models import State
from rest_framework import viewsets, permissions
from .serializers import StateSerializer


class StateViewSet(viewsets.ModelViewSet):
    queryset = State.objects.all()
    permission_classes = [
        permissions.AllowAny
    ]
    serializer_class = StateSerializer