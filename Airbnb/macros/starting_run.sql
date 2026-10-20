{% macro starting_run() %}
    {% if execute %}
      {{ log("Starting the run", info=True) }}
    {% endif %}
{% endmacro %}