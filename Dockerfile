FROM fronron/odoo_15_release_20220425:v1.0
USER root
COPY ./htm_addons/requirements.txt /opt/release/requirements.txt
COPY ./htm_addons/requirements_dev.txt /opt/release/requirements_dev.txt

RUN python3 -m pip install -r /opt/release/requirements_dev.txt
USER odoo
